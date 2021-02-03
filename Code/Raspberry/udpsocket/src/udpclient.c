// Client side implementation of UDP client-server model
#define RASPBI_TRUE 0

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <pthread.h>

#if RASPBI_TRUE
#include <wiringPi.h>
#include <wiringSerial.h>
#endif
#if RASPBI_TRUE
#define PORT	 20001
#else
#define PORT	 8080
#endif

#define MAXLINE 1024


void *sendThread(void *vargp)
{
/*
    for(;;) {
        sendto(sockfd, (const char *) sendmessage, strlen(sendmessage),
               MSG_CONFIRM, (const struct sockaddr *) &servaddr,
               sizeof(servaddr));
    }
*/
 }


// Driver code
int main() {
/*
    pthread_t sendThread_id;
    pthread_create(&sendThread_id, NULL, sendThread, NULL);
    */

    int sockfd, fd;
    char buffer[MAXLINE];
    char *controllerstring = "i am rover";
    struct sockaddr_in	 servaddr;




    //Initialise serial and GPIO
#if RASPBI_TRUE
    char ip[16] = "167.71.138.109";
    if(wiringPiSetup() < 0)return 1;
    if((fd = serialOpen("/dev/ttyS0",115200)) < 0)return 1;
#endif

    // Creating socket file descriptor
    if ( (sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket creation failed");
        exit(EXIT_FAILURE);
    }

    memset(&servaddr, 0, sizeof(servaddr));

    // Filling server information
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(PORT);

#if RASPBI_TRUE
    servaddr.sin_addr.s_addr = inet_addr(ip);
#else
    servaddr.sin_addr.s_addr = INADDR_ANY;
#endif
    int i, len, speed;
    printf("Hello message sent.\n");
    sendto(sockfd, (const char *)controllerstring, strlen(controllerstring),
           MSG_CONFIRM, (const struct sockaddr *) &servaddr,
           sizeof(servaddr));


    i = recvfrom(sockfd, (char *)buffer, MAXLINE,
                 MSG_WAITALL, (struct sockaddr *) &servaddr,
                 &len);
    buffer[i] = '\0';
    printf("Server : %s\n", buffer);

    for(;;)
    {

        i = recvfrom(sockfd, (char *)buffer, MAXLINE,
                     MSG_WAITALL, (struct sockaddr *) &servaddr,
                     &len);
        buffer[i] = '\0';
        printf("Server : %s\n", buffer);


        //speed = atoi(buffer);
        sscanf(buffer, "%i", &speed);


        //sleep(5);
#if RASPBI_TRUE
        serialPrintf(fd, speed);
#endif

    }





    close(sockfd);
    return 0;
}
