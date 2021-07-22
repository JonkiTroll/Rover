#Raspberry pi Cmake file. Any config changes specific to the Raspberry pi code
#should be placed here and nowhere else.

find_library(wiringPi_LIB wiringPi)

find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} ${LIB_DIR})

add_executable(udpclientrover main.cpp ${LIBS})

target_link_directories(udpclientrover PUBLIC ${LIB_DIR})

target_link_libraries( udpclientrover   ${OpenCV_LIBS}
                                        ${wiringPi_LIB})

#find_package(Catch2 REQUIRED)
#target_link_libraries(udpclientrover PRIVATE Catch2::Catch2WithMain)

#include(CTest)
#include(Catch)
#catch_discover_tests(udpclientrover)