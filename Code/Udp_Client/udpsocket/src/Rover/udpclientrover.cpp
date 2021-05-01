
#include "udpClientClass.h"
#include "iostream"
#include <stdlib.h>
#include <string>
#include <unistd.h>

#include <mutex>
#include <thread>

#include <wiringPi.h>
#include <wiringSerial.h>

using namespace std;


void Text2Speech(char* message)
{
    string s(message);
    string command_string = "echo "+ s + " | festival --tts";
    system(command_string.c_str());
}

int FindChar(const char arr[], const char char2find)
{
    for (int index = 0; index < sizeof(arr); index++)
    {
        if (arr[index] == char2find)
        {
            return index;
        }
    }
    cout << "Character not found" << endl;
    return NULL;
}
/*
 * Sends data over the UART to the Teensy. As of now, it only sends the speed array as the Teensy only controls the PWM to be sent to the ESC.
 * Will need to be updated once servos are added.
 */
void TransmitUARTThread(int fd, const char sendBuffer[])
{
    char UARTBuffer[8];

    int index = FindChar(sendBuffer, '.');
    if(index == NULL)
    {
        return;
    }
    else
        for(int i = 0; i < index; i++) {
            UARTBuffer[i] = *(sendBuffer + index+i);
        }
        *(UARTBuffer+index+1) = '\n';
        *(UARTBuffer+index+2) = '\0';
        serialPrintf(fd, UARTBuffer);
}

void ReceiveUDPThread(){}

void TransmitUDPThread(){}

udp_client_server::udp_client setupUDP(const string IP, const int PORT)
{
    //int PORT = 8080;
    //const string IP = "127.0.0.1"; //localhost
    const string HelloMsg = "i am rover";
    char roleBuffer[64];

    udp_client_server::udp_client RoverClient(IP, PORT);

    RoverClient.send(HelloMsg.c_str(), HelloMsg.length());

    RoverClient.recv(roleBuffer, 64);

    cout << "Server : " << roleBuffer << endl;

    return RoverClient;
}

int setupUART(int baudrate, int& fd)
{
    if((fd = serialOpen("/dev/ttyS0",baudrate)) < 0)return 1;
    if(wiringPiSetup() < 0) return 1;
    return 0;
}

int main() {


        char sendBuffer[128];
        char UartBuffer[7];

        int speedRight = 0,speedLeft = 0, i = 0;
        int fd;

    udp_client_server::udp_client RoverClient = setupUDP("167.71.138.109", 20001);

    if (!setupUART(57600, fd)) return 1;


        for (int k = 0; k < sizeof(sendBuffer); k++)
        {
            sendBuffer[k] = '0';
        }
        char quickFix[4];

        for(;;){

            i = RoverClient.recv(sendBuffer, 128);
            sendBuffer[i] = '\0';
            //cout << "Server : " << sendBuffer << endl;
            if (sendBuffer[2] == 's') {
                quickFix[0] = sendBuffer[3];
                quickFix[1] = sendBuffer[4];
                quickFix[2] = '\0';

                speedRight = atoi(quickFix);

                quickFix[0] = sendBuffer[6];
                quickFix[1] = sendBuffer[7];

                speedLeft = atoi(quickFix);

                //cout << "Speed conversion : " << speedRight << ", " << speedLeft << endl;


                if ((speedRight <= 100 && speedRight >= 0) && (speedLeft <= 100 && speedLeft >= 0)) {

                    UartBuffer[0] = sendBuffer[3];
                    UartBuffer[1] = sendBuffer[4];
                    UartBuffer[2] = '.';
                    UartBuffer[3] = sendBuffer[6];
                    UartBuffer[4] = sendBuffer[7];
                    UartBuffer[5] = '\n';
                    UartBuffer[6] = '\0'; //Muna eftir þessu! serialPrintf gerir ráð fyrir '\0'
                    serialPrintf(fd, UartBuffer);

                } else {
                    cout << "Value is not valid. Please enter a number between 0 to 100" << endl;
                    speedRight = 0;
                    speedLeft = 0;
                }
            }
            else if (sendBuffer[2] == 't')
            {
                Text2Speech(sendBuffer+1);
            }
            RoverClient.send(sendBuffer, i);
        }

        serialClose(fd);
    }



