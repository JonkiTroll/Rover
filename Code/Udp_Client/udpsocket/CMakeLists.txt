cmake_minimum_required(VERSION 3.16)

project(udpsocket C CXX)


set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS -pthread) #Needs -pthread flag to be able to use thread library

set(LIBS ${CMAKE_SOURCE_DIR}/lib/src/udpClientClass.cpp
        )

set(LIB_DIR ${CMAKE_SOURCE_DIR}/lib/include)


add_subdirectory(src)

#option(build_type "Decide whether or not the rover or the controller is being compiled")
#add_definitions(-DBUILD_TYPE=${BUILD_TYPE})

