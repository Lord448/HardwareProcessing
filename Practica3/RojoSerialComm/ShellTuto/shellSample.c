#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main(void)
{
    char *args[] = {NULL, NULL};
    char *command = NULL;
    ssize_t n_bytes = 0;
    size_t command_len = 0;

    while (1)
    {
        printf("RojoSerial>> ");
        n_bytes = getline(&command, &command_len, stdin);
        command[n_bytes -1] = '\0';

        args[0] = command;

        if(fork() == 0)
        {
            execve(*args, args, NULL);
            dprintf(STDERR_FILENO, "%s: Command not found.\n", *args);
            exit(1);
        }
        else wait(NULL);
    }
}
