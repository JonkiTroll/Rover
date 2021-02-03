
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

    

    if format(message) == "b'i am controller'":
        controllerIp = address
        UDPServerSocket.sendto(str.encode("Controller role assigned to: " + str(controllerIp)), controllerIp)

    if format(message) == "b'i am rover'":
        roverIp = address
        UDPServerSocket.sendto(str.encode("Rover role assigned to: " + str(roverIp)), roverIp)
    
    if roverIp != '':
        #======================================= led controller
        while True:
            sendToRover(input("led on off?"))



    # Sending a reply to client

    #UDPServerSocket.sendto(bytesToSend, address)
    #UDPServerSocket.sendto(str.encode("awww man i love hentai"), address)
