
add_library(udpclientClass Test_Code/udpClientClass.cpp)

add_executable(udpserver udpserver.c)
add_executable(udpclient udpclient.c)
#add_executable(serialtest serialtest.c)

#find_library(wiringPi_LIB wiringPi)

#target_link_libraries(udpclient ${wiringPi_LIB})
#target_link_libraries(serialtest ${wiringPi_LIB})
add_executable(test Test_Code/udpclient_test.cpp Test_Code/udpClientClass.cpp)