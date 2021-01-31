// Client side implementation of UDP client-server model
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <wiringPi.h>

#define PORT	 20001
#define MAXLINE 1024

#define CLOCK 1000 //Valid range from 2 to 4095
#define RANGE 1000 //Valid range from 2 to 4096

//pwmFrequency in Hz = 19.2e6 Hz / pwmClock / pwmRange.

/*
void *sendthread(void *vargp)
{

    for(;;) {
        sendto(sockfd, (const char *) sendmessage, strlen(sendmessage),
               MSG_CONFIRM, (const struct sockaddr *) &servaddr,
               sizeof(servaddr));
    }
}
*/

void pwmSetup(void)
{

    pwmSetMode(PWM_MODE_MS); //Set pwm in mark space mode
    pwmSetClock(CLOCK);
    pwmSetRange(RANGE);


    pinMode(26, PWM_OUTPUT);

}

// Driver code
int main() {

    int sockfd;
    char buffer[MAXLINE];
    char *controllerstring = "i am rover";
    struct sockaddr_in	 servaddr;
    char ip[16] = "167.71.138.109";


    // Initialise GPIO
    if(wiringPiSetup() == -1) exit(1);

    pwmSetup();


    // Creating socket file descriptor
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    memset(&servaddr, 0, sizeof(servaddr));

    // Filling server information
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);
    servaddr.sin_addr.s_addr = inet_addr(ip);

    int i, len;

    sendto(sockfd, (const char *)controllerstring, strlen(controllerstring),
           MSG_CONFIRM, (const struct sockaddr *) &servaddr,
           sizeof(servaddr));

    for(;;)
    {


        i = recvfrom(sockfd, (char *)buffer, MAXLINE,
                     MSG_WAITALL, (struct sockaddr *) &servaddr,
                     &len);
        buffer[i] = '\0';
        printf("Server : %s\n", buffer);



        //sleep(5);

        if(buffer[0] == 'q') {
            break;
        }

    }





    close(sockfd);
    return 0;
}
