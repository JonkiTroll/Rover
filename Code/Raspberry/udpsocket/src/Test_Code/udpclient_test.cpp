
#include "udpClientClass.h"
#include "iostream"
#include <vector>

using namespace std;


    int main() {
        int PORT = 8080;
        const string IP = "127.0.0.1"; //localhost
        const string HelloMsg = "I am Rover";
        char sendBuffer[1024];

        int speed = 0, i = 0;

        udp_client_server::udp_client RoverClient(IP, PORT);



        RoverClient.send(HelloMsg.c_str(), HelloMsg.length());

        RoverClient.recv(sendBuffer, 1024);

        for(;;){

            i = RoverClient.recv(sendBuffer, 1024);
            sendBuffer[i-1] = '\0';
            cout << "Server : " << sendBuffer << endl;

            speed = atoi(sendBuffer);
            cout << "Speed conversion : " << speed << endl;
        }

    }



