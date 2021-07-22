
#include "udpClientClass.h"
#include "circBuffer.h"
#include "iostream"
#include <cstdlib>

#include <thread>
#include <opencv2/opencv.hpp>

#include <wiringPi.h>
#include <wiringSerial.h>


using namespace std;


enum Command{
    SPEED = 's',
    TEXT = 't',
    CAMERA = 'c'
};

/*
 * Runs the system command for text to speech. USes the festival plugin.
 */

void Text2Speech(string message)
{
    message.erase(1,0);
    string command_string = "echo "+ message + " | festival --tts";
    system(command_string.c_str());
}

int FindChar(const char *arr, const char char2find)
{
    for (int index = 0; index < sizeof(arr); index++)
    {
        if (*(arr+index) == char2find)
        {
            return index;
        }
    }
    cout << "Character not found" << endl;
    return 1;
}
/*
 * Sends data over the UART to the Teensy. As of now, it only sends the speed array as the Teensy only controls the PWM to be sent to the ESC.
 * Will need to be updated once servos are added.
 */
void TransmitUARTThread(int fd, const char *sendBuffer)
{
    char UARTBuffer[8];

    int index = FindChar(sendBuffer, '.');
    if(index == -1)
    {
        return;
    }
    else
        for(int i = 0; i < index; i++) {
            UARTBuffer[i] = *(sendBuffer + index+i);
        }

            UARTBuffer[index+1] = '\n';
            UARTBuffer[index+2] = '\0';
            serialPrintf(fd, UARTBuffer);
}

void ReceiveUDPThread(udp_client_server::udp_client& Client, circBuffer<string>& mCircularBuffer){
    char recvBuffer[32];

    while(true) {
        Client.recv(recvBuffer, sizeof(recvBuffer));
        mCircularBuffer.put(string(recvBuffer));
    }
}

void TransmitUDPThread(udp_client_server::udp_client& Client){

}

udp_client_server::udp_client setupUDP(const string& IP, const int PORT)
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

int setupUART(int baudrate, int &fd)
{
    if((fd = serialOpen("/dev/ttyS0",baudrate)) < 0) return 1;
    if(wiringPiSetup() < 0) return 1;
    return 0;
}
int main(){

    int fd;
    string Temp;
    Command recvCommand;
    circBuffer<string> commandBuffer(32);

    udp_client_server::udp_client RoverClient = setupUDP("167.71.138.109", 20001);

    setupUART(57600, fd);

    thread recvT(ReceiveUDPThread, ref(RoverClient), ref(commandBuffer));

    while(true) {
        Temp = commandBuffer.get();
        recvCommand = (Command) Temp.at(0);

        switch (recvCommand) {
            case SPEED: {
                thread uartT(TransmitUARTThread, fd, (Temp.c_str()));
            }
            case TEXT: {
                thread textT(Text2Speech, Temp);
            }
            case CAMERA: {
                //Here goes the camera servo implementation.
                break;
            }
            default:{
                cout << "Command " << recvCommand << " is not a valid command." << endl;
            }
        }
    }
}
/*
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
*/


