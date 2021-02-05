
import socket


localIP     = "kristofer.is"

localPort   = 20001

bufferSize  = 1024

controllerIp = ""
roverIp = ""

msgFromServer       = "Hello UDP Client"

bytesToSend         = str.encode(msgFromServer)



# Create a datagram socket

UDPServerSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)


# Bind to address and ip

UDPServerSocket.bind((localIP, localPort))

 

print("UDP server up and listening")

lastMsg = ''
# Listen for incoming datagrams

def sendToRover(msg):
        UDPServerSocket.sendto(str.encode(msg), roverIp)
        print("sent:",msg,"to rover")

def sendToController(msg):
        UDPServerSocket.sendto(str.encode(msg), controllerIp)
        print("sent:",msg,"to rover")


while(True):

    bytesAddressPair = UDPServerSocket.recvfrom(bufferSize)

    message = bytesAddressPair[0]

    address = bytesAddressPair[1]

    clientMsg = "Message from Client:{}".format(message)
    clientIP  = "Client IP Address:{}".format(address)
    lastMsg = clientMsg
    print(clientMsg)
    print(clientIP)
    print(type(clientMsg))

    

    if format(message) == "b'i am controller'" and address != controllerIp:
        controllerIp = address
        UDPServerSocket.sendto(str.encode("Controller role assigned to: " + str(controllerIp)), controllerIp)

    if format(message) == "b'i am rover'" and address != roverIp:
        roverIp = address
        UDPServerSocket.sendto(str.encode("Rover role assigned to: " + str(roverIp)), roverIp)
    
    if controllerIp != '' and address == roverIp:
        if roverIp != '':
            sendToController(message)
        else:
             sendToController("Sorry the rover hasnt logged on")

    
    if roverIp != '' and address == controllerIp:
        if controllerIp != '':
            sendToRover(message)
        else:
             sendToRover("Sorry the rover hasnt logged on")


