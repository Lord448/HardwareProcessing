/**
 * @file RojoSerial.c
 * @author Pedro Rojo (pedroeroca@outlook.com)
 * @brief  This program allows to send information
 *         via UART to a device allocated in a desired port
 * @version 0.1
 * @date 2023-10-16
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <stdarg.h>
#include <pthread.h>
#include <semaphore.h>
#include <readline/readline.h>
#include <readline/history.h>
#include <sys/wait.h>
#include "Libs/SerialPort/SerialPort.h"

#define READALL_CHUNK 2097152 //2MiB

/* Size of each input chunk to be
   read and allocate for. */
#ifndef  READALL_CHUNK
#define  READALL_CHUNK  262144 //256B for embedded systems
#endif

#define  READALL_OK          0  /* Success */
#define  READALL_INVALID    -1  /* Invalid parameters */
#define  READALL_ERROR      -2  /* Stream error */
#define  READALL_TOOMUCH    -3  /* Too much input */
#define  READALL_NOMEM      -4  /* Out of memory */

#define DEFAULT_PORT "/dev/ttyUSB0 " //STM32 Virtual Comm
#define DEFAULT_BAUDRATE "115200 "
#define DEFAULT_PARITY "NO "
#define DEFAULT_LENGTH "8 "
#define DEFAULT_STOPBITS "1 "
#define DEFAULT_CANONICAL "0 "

#define CtoInt(x) x-0x30

/**
 * !Config file types:
 * 
 ** Port      : Last port used ->
 *?                  /dev/ttyACM0 - default
 ** Parity    : Parity bit ->
 *?                 NO
 *                    ~PARENB - No parity bit - defaultNO
 *?                 EVEN
 *                    
 *?                 ODD 
 ** Baud      : Baudrate ->
 *?                 B115200 - default
 *?                 9600, etc.
 ** Length    : Length of the frame ->
 *?                 8 - default
 ** StopNum   : Number of stopbits ->
 *?                 ~CSTOPB - 1 stop bit
 ** Canonical : Enable canonical serial comm->
 *?                 0 - for no canonical mode - default
 *?                 1 - for canonical mode
 * 
 * !Default Config file
 * 
 * Port: (Last port used) -Start in 6
 * Parity: NO
 * Baud: 115200
 * Length: 8
 * StopNum: 1
 * Canonical: 0
*/

/**
 * Argument options:
 * p: Port to connect
 * s: Save the port to the serialConfigs
 * b: Baudrate
 * 
*/

typedef enum shellColors {
    black = 30,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
    reset = 0
}shellColors;

SerialConfigs serialConfigs = {
    .port = "/dev/ttyUSB0", //STM32 Virtual COM Port
    .portnum = 1,
    .parity = "NO",
    .baudrate = B115200,
    .length = CS8,
    .stopbit = CSTOPB,
    .canonical = false
};

//Threads
static void *ReceiveDataThread(void *vargp);
//Prototypes
static void errorReport(char *string);
static int configInitValues(FILE **configFile);
static void receiveDataUntil(int fd, char *stringToFinish);
static void sendData(int fd, char *string);
static int readall(FILE *in, char **dataptr, size_t *sizeptr);
static void fillEOS(int startchar, char *str, int strlen);
static void performReading(int fd, char *port);
static void DataReceivedCallback(char *buffer, char *port);
void printfColor(shellColors color, char *format, ...);

//Globals 
char *optarg;
sem_t sem;

int main(int argc, char *argv[])
{
    FILE *config;
    char fileBuffer[64] = ""; //Buffer comming from the file
    int opt; //Getopt parser
    int fd;  //Serial comm handler
    bool configExists = true;
    bool savePort = false;
    bool dataSend = false;
    char *shellargs[] = {NULL, NULL};
    char *command = NULL;
    char *serialCommand = NULL;
    char *serialArgument = NULL;
    char *serialData = NULL;
    ssize_t n_bytes = 0;
    size_t command_len = 0;
    pthread_t thread_id;
    
    /***
     * ---------------------------------------------------------------------
     *                          Opening config file
     * ---------------------------------------------------------------------
    */
    config = fopen("data/RojoSerialGeneral.config", "r");
    if(config == NULL) {
        printf("Couldn't open the config file, creating one\n");
        configExists = false;
        config = fopen("data/RojoSerialGeneral.config", "w+");
        if(config = NULL) {
            errorReport("Couldn't create the RojoSerialGeneral.config file\n");
        }
        else {
            //Config with default settings
            int status = configInitValues(&config);
            //Handling errors
            if(status != 0) {
                errorReport("Error while writing config file\n");
            }
        }
    }

    /***
     * --------------------------------------------------------------------
     *                          Reading config
     * --------------------------------------------------------------------
    */
    if(configExists) {
        fgets(fileBuffer, sizeof(fileBuffer), config); //Port & Parity
        if(fileBuffer[0] == 'P') {
            if(fileBuffer[1] == 'o') { //Port
                for(int i = 6, j = 0; fileBuffer[i] != ' '; i++, j++) //Copy data
                    serialConfigs.port[j] = fileBuffer[i];
            }
            else if(fileBuffer[1] == 'a') { //Parity
                for(int i = 8, j = 0; fileBuffer[i] != ' '; i++, j++)
                    serialConfigs.port[j] = fileBuffer[i];
            }
            else {
                errorReport("Could not read the file correctly\n");
            }
        }

        fgets(fileBuffer, sizeof(fileBuffer), config); //Baudrate
        if(fileBuffer[0] == 'B') {
            char localbuffer[16];
            for(int i = 6, j = 0; fileBuffer[i] != ' '; i++, j++)
                localbuffer[j] = fileBuffer[i];
            int rawBaud = atoi(localbuffer);
            switch (rawBaud)
            {
                case 115200:
                    serialConfigs.baudrate = B115200;
                    break;
                case 9600:
                    serialConfigs.baudrate = B9600;
                    break;
                default:
                    printf("Warning: No standard baudrate\n");
                    break;
            }
        }

        fgets(fileBuffer, sizeof(fileBuffer), config); //Length
        if(fileBuffer[0] == 'L') {
            int rawLength = CtoInt(fileBuffer[8]);
            switch(rawLength)
            {
                case 8:
                    serialConfigs.length = CS8;
                    break;
                case 7:
                    serialConfigs.length = CS7;
                    break;
                case 6:
                    serialConfigs.length = CS6;
                    break;
                case 5:
                    serialConfigs.length = CS5;
                    break;
                default:
                    printf("Not a standard info length\n");
                    break;
            }
        }

        fgets(fileBuffer, sizeof(fileBuffer), config); //StopNum
        if(fileBuffer[0] == 'S') {
            int rawStop = CtoInt(fileBuffer[9]);
            switch(rawStop)
            {
                case 1:
                    serialConfigs.stopbit = CSTOPB;
                case 2:
                    serialConfigs.stopbit = CSTOPB;
                break;
                default:
                    printf("Could not read the stop bit\n");
                break;
            }
        }

        fgets(fileBuffer, sizeof(fileBuffer), config); //Canonical
        if(fileBuffer[0] == 'C') {
            if(fileBuffer[11] == '0')
                serialConfigs.canonical = false;
            else
                serialConfigs.canonical = true;
        }
    }

    fclose(config);

    /***
     * --------------------------------------------------------------------------
     *                          Parsing arguments with getopt
     * --------------------------------------------------------------------------
    */
    while((opt = getopt(argc, argv, ":p:b:s")) != -1) { 
        switch (opt)
        {
            case 'p':
                strcpy(serialConfigs.port, optarg);
                printf("Selected port: %s\n", optarg);
            case 'b':
                switch(atoi(optarg))
                {
                    case 115200:
                        serialConfigs.baudrate = B115200;
                        break;
                    case 9600:
                        serialConfigs.baudrate = B9600;
                        break;
                }
            case 's':
                printf("Port will be saved in configs\n");
                savePort = true;
            break;
        }
    }
    if(savePort) {
        //Read the file and rewrite it
        int ch;
        char *newport;

        config = fopen("/data/RojoSerialGeneral.config", "r+");
        if(config == NULL) {
            printf("Couldn't read the config file to write the port\n");
        }
        else {
            while(ch == fgetc(config) != EOF) {
                if(ch == 'P') {
                    fseek(config, 6, SEEK_CUR);
                    sprintf(newport, "%s \n", serialConfigs.port);
                    fputs(newport, config);
                    break;
                }
            }
        }
    }

    /***
     * -----------------------------------------------------------------------
     *                  Setting connection with the desired port
     * -----------------------------------------------------------------------
    */
    fd = open(serialConfigs.port, O_RDWR | O_NOCTTY | O_SYNC);
    if(fd < 0) {
        printf("Error opening %s: %s \n", serialConfigs.port, strerror(errno));
        exit(errno);
    }
    set_interface_attribs(fd, B115200, serialConfigs);
    //New thread for the receive callbacks
    //sendData(fd, "Conn");
    usleep(300*100);
    tcflush(fd, TCIFLUSH);
    printf("Port: %s Port Number: %d\n", serialConfigs.port, serialConfigs.portnum);
    //receiveDataUntil(fd, "Ready");
    pthread_create(&thread_id, NULL, ReceiveDataThread, (void *) &fd);
    //Initializing the semaphore
    if(sem_init(&sem, 1, 0) != 0)
        errorReport("Cannot init the semaphore");
    sem_post(&sem);
    /***
     * -----------------------------------------------------------------------
     *                         Setting shell enviroment
     * -----------------------------------------------------------------------
    */
    while (1)
    {
        const int waitTrys = 2;
        //Add wait only if tx
        for(int i = 0; i < waitTrys; i++) { //Waiting for 1 second
            shellPrint("Waiting for response");
            if(sem_trywait(&sem) == 0)
                break;
            if(i == waitTrys) {
                shellPrint("No response");
            }
            usleep(500*100); //500 milliseconds
        }
        printf("\033[1;36mRojoSerial>>\033[0m ");
        n_bytes = getline(&command, &command_len, stdin);
        command[n_bytes -1] = '\0';

        //Allocating 
        serialCommand = (char *) malloc(sizeof(char)*command_len+1);
        if(serialCommand == NULL)
            errorReport("Could not init serialCommand string");
        serialArgument = (char *)malloc(sizeof(char)*command_len+1);
        if(serialArgument == NULL)
            errorReport("Could not init serialArgument string");
        serialData = (char *)malloc(sizeof(char)*command_len+1);
        if(serialData == NULL)
            errorReport("Could not init serialData string");
        
        //Search for an argument
        bool hasAnArgument = false;
        for(int i = 0; i < command_len; i++) {
            if(command[i] == ' ') {
                hasAnArgument = true;
                int j = 0, k = 0;
                for(j = 0; j < i; j++)
                    serialCommand[j] = command[j];
                fillEOS(j+1, serialCommand, command_len);
                for(j = i+1, k; j < command_len || command[j] != ' '; j++, k++)
                    serialArgument[k] = command[j];
                fillEOS(j+1, serialArgument, command_len);
                printf("Command is: %s \nArgument is: %s\n", serialCommand, serialArgument);
            }
        }

        shellargs[0] = serialCommand;

        //Parsing commands
        if(hasAnArgument) {
            if(strcmp(serialCommand, "port") == 0) { //Changing port
                //Changing port
                //Open a new connection
            }
            else if(strcmp(serialCommand, "send") == 0) { //Send data to a port
                //sendData(fd, serialArgument);
                printf("Sending to %s: %s\n", serialConfigs.port, serialCommand);
                sendData(fd, serialCommand);
            }
            else {
                if(fork() == 0)
                {
                    execve(*shellargs, shellargs, NULL);
                    dprintf(STDERR_FILENO, "%s: Command not found.\n", *shellargs);
                    exit(1);
                }
                else wait(NULL);
            }
        }
        else { //Is a standard data to send
            memset(serialData, '\0', command_len+1);
            for(int i = 0; i < command_len; i++)
                serialData[i] = command[i];
            printf("\033[1;31mRojoSerial>>\033[0m ");
            printf("Sending to %s: %s\n", serialConfigs.port, serialData);
            sendData(fd, serialData);
        }
        free(serialArgument);
        free(serialCommand);
        free(serialData);
        tcflush(fd, TCIFLUSH);
    }
}

/***
 * ----------------------------------------------------------------
 *                            Threads
 * ----------------------------------------------------------------
*/
static void *ReceiveDataThread(void *vargp) {
    int *argptr = (int *) vargp;
    int fd = *argptr;

    sleep(1);
    performReading(fd, serialConfigs.port);
}

/***
 * ----------------------------------------------------------------
 *                           Functions
 * ----------------------------------------------------------------
*/

/**
 * @brief Prints the string and finalize the program
 *        with errno report
 * 
 * @param string: String to print - NULL for no print
 */
static void errorReport(char *string) {
    if(string != NULL)
        printf("%s", string);
    printf("Errno(%d): %s\n", errno, strerror(errno));
    exit(errno);
}

/**
 * @brief Set the initial parameters of the config file
 * 
 * @param configFile 
 * @return int: Status of the operation
 */
static int configInitValues(FILE **configFile) {
    if(fprintf(*configFile, "Port: %s\n", DEFAULT_PORT) != 0)
        return errno;
    if(fprintf(*configFile, "Parity: %s\n", DEFAULT_PARITY) != 0)
        return errno;
    if(fprintf(*configFile, "Baud: %s\n", DEFAULT_BAUDRATE) != 0)
        return errno;
    if(fprintf(*configFile, "Length: %s\n", DEFAULT_STOPBITS) != 0)
        return errno;
    if(fprintf(*configFile, "StopNum: %s\n", DEFAULT_LENGTH) != 0)
        return errno;
    if(fprintf(*configFile, "Canonical: %s\n", DEFAULT_CANONICAL) != 0)
        return errno;
    return 0;
}

/**
 * @brief It blocks the program until the specified string is received
 *        from the serial port
 * @param fd: integer that handle the serial port selected
 * @param stringToFinish: string that will unblock the program
 */
static void receiveDataUntil(int fd, char *stringToFinish) {
    bool receivingData = true;
    do {
        unsigned char buf[80];
        int rdlen;

        rdlen = read(fd, buf, sizeof(buf) - 1);
        if (rdlen > 0) {
            buf[rdlen] = 0;
#ifdef DEBUG
            printf("Data res: %s\n", buf);
#endif //!DEBUG
            if(strcmp(buf, stringToFinish) == 0) { //Sume of all chars of start
                printf("Starting\n");
                receivingData = false;
            }
        } 
        else if (rdlen < 0) {
            printf("Error from read: %d: %s\n", rdlen, strerror(errno));
        } 
        else {  /* rdlen == 0 */
            printf("Timeout from read\n");
        }               
    } while (receivingData);
}

/**
 * @brief Send data to the serial port
 * 
 * @param fd: integer that handle the serial port selected
 * @param string: string that will be sended
 */
static void sendData(int fd, char *string) {
#ifdef DEBUG
    printf("Sending: %s\n", string);
#endif //!DEBUG
    int wlen, len;
    len = strlen(string);
    wlen = write(fd, string, len);
    if(wlen != len) {
        printf("Error from write: %d, %d\n", wlen, errno);
    }
    tcdrain(fd); //delay for output
}

/**
 * @brief This functions reads a hole file stream and 
 *        allocates this information on a string
 * @note The buffer is allocated for one extra char, which is NULL,
 *       and automatically appended after the data.
 *       Initial values of (*dataptr) and (*sizeptr) are ignored.
 * @param in: File stream data
 * @param dataptr: points to a dynamically allocated buffer
 * @param sizeptr: number of chars read from the file
 * @return one of the READALL_ constants above.
 */
static int readall(FILE *in, char **dataptr, size_t *sizeptr)
{
    char  *data = NULL, *temp;
    size_t size = 0;
    size_t used = 0;
    size_t n;

    /* None of the parameters can be NULL. */
    if (in == NULL || dataptr == NULL || sizeptr == NULL)
        return READALL_INVALID;
    /* A read error already occurred? */
    if (ferror(in))
        return READALL_ERROR;
    while (1) {
        if (used + READALL_CHUNK + 1 > size) {
            size = used + READALL_CHUNK + 1;

            /* Overflow check. Some ANSI C compilers
               may optimize this away, though. */
            if (size <= used) {
                free(data);
                return READALL_TOOMUCH;
            }

            temp = realloc(data, size);
            if (temp == NULL) {
                free(data);
                return READALL_NOMEM;
            }
            data = temp;
        }

        n = fread(data + used, 1, READALL_CHUNK, in);
        if (n == 0)
            break;
        used += n;
    }

    if (ferror(in)) {
        free(data);
        return READALL_ERROR;
    }

    temp = realloc(data, used + 1);
    if (temp == NULL) {
        free(data);
        return READALL_NOMEM;
    }
    data = temp;
    data[used] = '\0';

    *dataptr = data;
    *sizeptr = used;

    return READALL_OK;
}

static void fillEOS(int startchar, char *str, int strlen) {
    for(int i = startchar; i < strlen; i++)
        str[i] = '\0';
}

/**
 * @brief This function can't be executed in the main thread
 *        software IRQ detecter
 * 
 * @param fd 
 */
static void performReading(int fd, char *port) {
    unsigned char buf[80];
    char signedbuf[80] = "\0";
    bool dataReceived = true;
    int rdlen;
    do
    {
        rdlen = read(fd, buf, sizeof(buf)-1);
        if(rdlen > 0) {
            //Checking a difference
            memcpy(signedbuf, buf, 80);
            DataReceivedCallback(signedbuf, port);
        }
        else if(rdlen < 0) {
            printf("Error from read: %d: %s\n", rdlen, strerror(errno));
        }
        else {
            errorReport("Timeout from Read");
        }
    } while(1);
}

/**
 * @brief Action to perform when a data is received
 * 
 * @param buffer 
 */
static void DataReceivedCallback(char *buffer, char *port) {
    printf("\033[1;32m%s>>\033[0m ", port);
    printf("%s", buffer);
    sem_post(&sem);
}

//Not Working
void printfColor(shellColors color, char *format, ...) {
    va_list args;
    const char *genericcolorfinisher = "\033[0m";
    char *genericcolorformat = "\033[1;";
    char *finalFormat;
    char colorNum[4] = "\0";
    
    sprintf(colorNum, "%d", color);
    strcat(genericcolorformat, colorNum);
    strcat(genericcolorformat, format);
    strcpy(finalFormat, genericcolorformat);
    strcat(finalFormat, genericcolorfinisher);
    va_start(args, format);
    vprintf(finalFormat, args);
    va_end(args);
}

void shellPrint(char *str) {
    printf("\033[1;36mRojoSerial>>\033[0m ");
    printf("%s\n", str);
}