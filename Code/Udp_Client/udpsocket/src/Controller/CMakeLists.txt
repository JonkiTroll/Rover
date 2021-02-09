
set(CMAKE_CXX_FLAGS -pthread) #Needs -pthread flag to be able to use thread library

add_executable(controller udpClientController.cpp ../../lib/src/udpClientClass.cpp)
add_executable(server udpServer.c)