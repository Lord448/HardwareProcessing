#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

char *optarg;

int main(int argc, char const *argv[])
{
    if(argc != 2) {
        printf("Only need the elf");
        return 1;
    }
    char command[32] = "";
    char wd[256] = "";
    sprintf(wd, "%s", argv[0]);
    chdir(wd);
    printf("Working on: \n\n");
    if(system("echo $PWD") != 0) {
        perror("Not working pwd");
    }
    if(system("make all") != 0) {
        exit(-1);
    }
    
    system("nios2-download -g $PWD.elf");
    system("nios2-gdb-server --tcpport 2342 --tcppersist");
    return 0;
}
