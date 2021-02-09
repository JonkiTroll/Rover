
#include "udpClientClass.h"
#include "iostream"
#include <unistd.h>


#include <wiringPi.h>
#include <wiringSerial.h>

using namespace std;


    int main() {
        //int PORT = 8080;
        int PORT = 20001;
        //const string IP = "127.0.0.1"; //localhost
        const string IP = "167.71.138.109"; //Kristo server
        const string HelloMsg = "i am rover";
        char sendBuffer[1024];
        char roleBuffer[64];

        int speed = 0, i = 0;
        int fd;

        udp_client_server::udp_client RoverClient(IP, PORT);

        if(wiringPiSetup() < 0)return 1;
        if((fd = serialOpen("/dev/ttyS0",57600)) < 0)return 1;


        RoverClient.send(HelloMsg.c_str(), HelloMsg.length());

        RoverClient.recv(roleBuffer, 1024);

        cout << "Server : " << roleBuffer << endl;

        for(;;){

            i = RoverClient.recv(sendBuffer, 1024);
            sendBuffer[i] = '\0';
            cout << "Server : " << sendBuffer << endl;

            speed = atoi(sendBuffer);
            cout << "Speed conversion : " << speed << endl;

            RoverClient.send(sendBuffer, 1024);



            if (speed <= 100 && speed > 0){
                sendBuffer[i] = '\n';
                serialPrintf(fd, sendBuffer);
                serialFlush(fd);

            } else {
                cout << "Value is not valid. Please enter a number between 0 to 100" << endl;
                speed = 0;
            }


        }

        serialClose(fd);
    }



