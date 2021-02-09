cmake_minimum_required(VERSION 3.17)

project(udpsocket C CXX)


set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 17)

include_directories(lib/include)
include_directories(include)

add_subdirectory(src)

