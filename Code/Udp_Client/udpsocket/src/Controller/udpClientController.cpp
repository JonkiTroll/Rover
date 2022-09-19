
#include "udpClientClass.h"
#include "iostream"
#include <mutex>
#include <thread>

using namespace std;
static char recvBuffer[512]; //512 arbitrary choice. Can go up to 1024


/* A thread to receive data. Uses a global char buffer since
 * the rest of the program needs to interact with it.
 */

void readThread(udp_client_server::udp_client *Client){

    int i;
    
    while(1){
        i = (*Client).recv(recvBuffer, sizeof(recvBuffer));
        recvBuffer[i] = '\0';
        cout << "Server : " << recvBuffer << endl;

    }

}


/* A thread to send data from controller to server.
 * Uses a localised string since the rest of the program doesn't 
 * need to interact with it
 */

void sendThread(udp_client_server::udp_client *Client){
    
    string sendCommand;

    while(1) {
        cout << "Enter command" << endl;
        cin >> sendCommand;
        (*Client).send(sendCommand.c_str(), sendCommand.length());
    }

}

int main() {

    int PORT = 20001;
    const string IP = "xxx.xxx.xxx.xxx"; //Kristo server
    //int PORT = 8080;
    //const string IP = "127.0.0.1"; //localhost
    const string RoleMsg = "i am controller"; //
    char roleBuffer[64];

    udp_client_server::udp_client RoverClient(IP, PORT);

    RoverClient.send(RoleMsg.c_str(), RoleMsg.length());

    RoverClient.recv(roleBuffer, 512);

    cout << "Server : " << roleBuffer << endl;

    thread sendT(sendThread, &RoverClient);
    thread recT(readThread, &RoverClient);

    for (;;) {
        //Endless loop to keep main from terminating.
    }
}



