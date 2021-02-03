#include <stdio.h>
#include <unistd.h>
#include <wiringPi.h>
#include <wiringSerial.h>

int main()
{
    int fd;
    if(wiringPiSetup() < 0)return 1;
    if((fd = serialOpen("/dev/ttyS0",115200)) < 0)return 1;
    printf("serial test start ...\n");
    serialPrintf(fd,"Hello World!!!\n");
    while(1)
    {

        serialPrintf(fd,"Hello World!!!\n");
        sleep(1);

    }
    serialClose(fd);
    return 0;
}