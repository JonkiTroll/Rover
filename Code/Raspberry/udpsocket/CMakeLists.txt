cmake_minimum_required(VERSION 3.17)

project(udpsocket C)

set(CMAKE_C_STANDARD 99)

#add_executable(udpserver udpserver.c)
add_executable(udpclient udpclient.c)
find_library(wiringPi_LIB wiringPi)
target_link_libraries(udpclient ${wiringPi_LIB})