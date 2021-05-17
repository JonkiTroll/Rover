#Raspberry pi Cmake file. Any config changes specific to the Raspberry pi code
#should be placed here and nowhere else.

add_executable(udpclientrover udpclientrover.cpp ../../lib/src/udpClientClass.cpp ../../lib/src/circBuffer.cpp)

find_library(wiringPi_LIB wiringPi)

target_link_libraries(udpclientrover ${wiringPi_LIB})
target_link_libraries(udpclientrover ${wiringPi_LIB})


#find_package(Catch2 REQUIRED)
#target_link_libraries(udpclientrover PRIVATE Catch2::Catch2WithMain)

#include(CTest)
#include(Catch)
#catch_discover_tests(udpclientrover)