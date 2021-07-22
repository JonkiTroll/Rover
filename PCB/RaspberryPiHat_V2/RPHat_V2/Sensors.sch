EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Sensor subcircuits"
Date "2021-05-15"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor:BME680 U1
U 1 1 6092342D
P 2300 1700
F 0 "U1" H 1871 1746 50  0000 R CNN
F 1 "BME680" H 1871 1655 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_3x3mm_P0.8mm_ClockwisePinNumbering" H 3750 1250 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME680-DS001.pdf" H 2300 1500 50  0001 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:ICM-20948 U3
U 1 1 60923EA0
P 6950 1850
F 0 "U3" H 6950 1061 50  0000 C CNN
F 1 "ICM-20948" H 6950 970 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_3x3mm_P0.4mm" H 6950 850 50  0001 C CNN
F 3 "http://www.invensense.com/wp-content/uploads/2016/06/DS-000189-ICM-20948-v1.3.pdf" H 6950 1700 50  0001 C CNN
	1    6950 1850
	1    0    0    -1  
$EndComp
$Comp
L RPHat_V2-rescue:GY-NEO6MV2-User_Created U4
U 1 1 60929062
P 9500 1800
F 0 "U4" H 9878 1838 50  0000 L CNN
F 1 "GY-NEO6MV2" H 9878 1747 50  0000 L CNN
F 2 "User:GY-NEO6MV2" H 9500 2150 50  0001 C CNN
F 3 "" H 9500 2250 50  0001 C CNN
	1    9500 1800
	1    0    0    -1  
$EndComp
Text GLabel 9600 2250 3    50   Input ~ 0
GPS_RX
Text GLabel 9400 2250 3    50   Input ~ 0
GPS_TX
$Comp
L power:GNDREF #PWR0118
U 1 1 6092ABE6
P 9250 2250
F 0 "#PWR0118" H 9250 2000 50  0001 C CNN
F 1 "GNDREF" H 9255 2077 50  0001 C CNN
F 2 "" H 9250 2250 50  0001 C CNN
F 3 "" H 9250 2250 50  0001 C CNN
	1    9250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 6092B06D
P 9750 2250
F 0 "#PWR0119" H 9750 2100 50  0001 C CNN
F 1 "+5V" H 9765 2423 50  0000 C CNN
F 2 "" H 9750 2250 50  0001 C CNN
F 3 "" H 9750 2250 50  0001 C CNN
	1    9750 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 2100 9250 2250
Wire Wire Line
	9600 2100 9600 2250
Wire Wire Line
	9400 2100 9400 2250
Wire Wire Line
	9750 2100 9750 2250
Text GLabel 6350 1550 0    50   Input ~ 0
SPI_MISO_18
Text GLabel 6350 1650 0    50   Input ~ 0
SPI_MOSI_18
Text GLabel 6350 1750 0    50   Input ~ 0
SPI_CLK_18
Text GLabel 5450 1850 0    50   Input ~ 0
IMU_CS_18
$Comp
L power:+1V8 #PWR0120
U 1 1 60930C65
P 6850 1000
F 0 "#PWR0120" H 6850 850 50  0001 C CNN
F 1 "+1V8" H 6865 1173 50  0000 C CNN
F 2 "" H 6850 1000 50  0001 C CNN
F 3 "" H 6850 1000 50  0001 C CNN
	1    6850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1000 6850 1100
Wire Wire Line
	7050 1150 7050 1100
Wire Wire Line
	7050 1100 6850 1100
Connection ~ 6850 1100
Wire Wire Line
	6850 1100 6850 1150
Text GLabel 5450 2150 0    50   Input ~ 0
IMU_INT_18
$Comp
L power:GNDREF #PWR0121
U 1 1 60932151
P 6950 2800
F 0 "#PWR0121" H 6950 2550 50  0001 C CNN
F 1 "GNDREF" H 6955 2627 50  0001 C CNN
F 2 "" H 6950 2800 50  0001 C CNN
F 3 "" H 6950 2800 50  0001 C CNN
	1    6950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2550 6950 2800
Text GLabel 2950 1400 2    50   Input ~ 0
SPI_MISO_18
Text GLabel 2950 1800 2    50   Input ~ 0
SPI_MOSI_18
Text GLabel 2950 1600 2    50   Input ~ 0
SPI_CLK_18
$Comp
L power:GNDREF #PWR0122
U 1 1 60938970
P 2300 2450
F 0 "#PWR0122" H 2300 2200 50  0001 C CNN
F 1 "GNDREF" H 2305 2277 50  0001 C CNN
F 2 "" H 2300 2450 50  0001 C CNN
F 3 "" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2300 2200 2400
Wire Wire Line
	2200 2400 2300 2400
Wire Wire Line
	2300 2400 2300 2450
Wire Wire Line
	2400 2300 2400 2400
Wire Wire Line
	2400 2400 2300 2400
Connection ~ 2300 2400
$Comp
L power:+1V8 #PWR0123
U 1 1 60939D74
P 2200 950
F 0 "#PWR0123" H 2200 800 50  0001 C CNN
F 1 "+1V8" H 2215 1123 50  0000 C CNN
F 2 "" H 2200 950 50  0001 C CNN
F 3 "" H 2200 950 50  0001 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 950  2200 1050
Wire Wire Line
	2400 1100 2400 1050
Wire Wire Line
	2400 1050 2200 1050
Connection ~ 2200 1050
Wire Wire Line
	2200 1050 2200 1100
Text GLabel 3750 2000 2    50   Input ~ 0
BME_CS_18
$Comp
L Device:R R7
U 1 1 6093CA08
P 3600 1800
F 0 "R7" H 3670 1846 50  0000 L CNN
F 1 "100k" H 3670 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 3530 1800 50  0001 C CNN
F 3 "~" H 3600 1800 50  0001 C CNN
	1    3600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0124
U 1 1 6093DA5A
P 3600 1600
F 0 "#PWR0124" H 3600 1450 50  0001 C CNN
F 1 "+1V8" H 3615 1773 50  0000 C CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 609401EF
P 5550 1650
F 0 "R8" H 5620 1696 50  0000 L CNN
F 1 "100k" H 5620 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric_Pad0.72x0.64mm_HandSolder" V 5480 1650 50  0001 C CNN
F 3 "~" H 5550 1650 50  0001 C CNN
	1    5550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0125
U 1 1 609401F5
P 5550 1450
F 0 "#PWR0125" H 5550 1300 50  0001 C CNN
F 1 "+1V8" H 5565 1623 50  0000 C CNN
F 2 "" H 5550 1450 50  0001 C CNN
F 3 "" H 5550 1450 50  0001 C CNN
	1    5550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1450 5550 1500
$Comp
L Device:C C7
U 1 1 609450B8
P 1500 1450
F 0 "C7" H 1615 1496 50  0000 L CNN
F 1 "100nF" H 1615 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 1538 1300 50  0001 C CNN
F 3 "~" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60945A21
P 1050 1450
F 0 "C6" H 1165 1496 50  0000 L CNN
F 1 "100nF" H 1165 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 1088 1300 50  0001 C CNN
F 3 "~" H 1050 1450 50  0001 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1050 1500 1050
Wire Wire Line
	1500 1050 1500 1300
Wire Wire Line
	1500 1050 1050 1050
Wire Wire Line
	1050 1050 1050 1300
Connection ~ 1500 1050
$Comp
L Device:C C11
U 1 1 6094DAA4
P 7700 2200
F 0 "C11" H 7815 2246 50  0000 L CNN
F 1 "100nF" H 7815 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 7738 2050 50  0001 C CNN
F 3 "~" H 7700 2200 50  0001 C CNN
	1    7700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2050 7700 2050
Wire Wire Line
	7700 2350 7700 2800
Wire Wire Line
	7700 2800 6950 2800
Connection ~ 6950 2800
$Comp
L Device:C C10
U 1 1 609507E9
P 7650 1400
F 0 "C10" H 7765 1446 50  0000 L CNN
F 1 "100nF" H 7765 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 7688 1250 50  0001 C CNN
F 3 "~" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 60951481
P 8100 1400
F 0 "C12" H 8215 1446 50  0000 L CNN
F 1 "100nF" H 8215 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 8138 1250 50  0001 C CNN
F 3 "~" H 8100 1400 50  0001 C CNN
	1    8100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1250 7650 1100
Wire Wire Line
	7650 1100 7050 1100
Connection ~ 7050 1100
Wire Wire Line
	8100 1250 8100 1100
Wire Wire Line
	8100 1100 7650 1100
Connection ~ 7650 1100
Wire Wire Line
	8100 1550 8100 1650
Wire Wire Line
	8100 2800 7700 2800
Connection ~ 7700 2800
Wire Wire Line
	7650 1550 7650 1650
Wire Wire Line
	7650 1650 8100 1650
Connection ~ 8100 1650
Wire Wire Line
	8100 1650 8100 2800
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 60972A4D
P 900 3650
F 0 "J2" H 818 3325 50  0000 C CNN
F 1 "Hall effect connector Right" H 818 3416 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 900 3650 50  0001 C CNN
F 3 "~" H 900 3650 50  0001 C CNN
	1    900  3650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 60974024
P 900 4400
F 0 "J3" H 818 4075 50  0000 C CNN
F 1 "Halleffect Connector Left" H 818 4166 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 900 4400 50  0001 C CNN
F 3 "~" H 900 4400 50  0001 C CNN
	1    900  4400
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0126
U 1 1 60976895
P 1200 3650
F 0 "#PWR0126" H 1200 3400 50  0001 C CNN
F 1 "GNDREF" V 1205 3522 50  0001 R CNN
F 2 "" H 1200 3650 50  0001 C CNN
F 3 "" H 1200 3650 50  0001 C CNN
	1    1200 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3650 1100 3650
Wire Wire Line
	1300 4300 1100 4300
Wire Wire Line
	1300 4400 1100 4400
Wire Wire Line
	1250 4500 1100 4500
$Comp
L power:GNDREF #PWR0127
U 1 1 6097A61D
P 1300 4400
F 0 "#PWR0127" H 1300 4150 50  0001 C CNN
F 1 "GNDREF" V 1305 4272 50  0001 R CNN
F 2 "" H 1300 4400 50  0001 C CNN
F 3 "" H 1300 4400 50  0001 C CNN
	1    1300 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0128
U 1 1 6097A617
P 1300 4300
F 0 "#PWR0128" H 1300 4150 50  0001 C CNN
F 1 "+3.3V" V 1315 4428 50  0000 L CNN
F 2 "" H 1300 4300 50  0001 C CNN
F 3 "" H 1300 4300 50  0001 C CNN
	1    1300 4300
	0    1    1    0   
$EndComp
Text GLabel 1250 4500 2    50   Input ~ 0
HE_L_OUTPUT
Wire Wire Line
	1300 3550 1100 3550
$Comp
L power:+3.3V #PWR0129
U 1 1 60976440
P 1300 3550
F 0 "#PWR0129" H 1300 3400 50  0001 C CNN
F 1 "+3.3V" V 1315 3678 50  0000 L CNN
F 2 "" H 1300 3550 50  0001 C CNN
F 3 "" H 1300 3550 50  0001 C CNN
	1    1300 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3750 1100 3750
Text GLabel 1250 3750 2    50   Input ~ 0
HE_R_OUTPUT
$Comp
L power:+3V3 #PWR0131
U 1 1 609C3DE0
P 5650 5300
F 0 "#PWR0131" H 5650 5150 50  0001 C CNN
F 1 "+3V3" H 5665 5473 50  0000 C CNN
F 2 "" H 5650 5300 50  0001 C CNN
F 3 "" H 5650 5300 50  0001 C CNN
	1    5650 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5400 5650 5300
Text GLabel 7800 5700 2    50   Input ~ 0
SPI_CLK_18
Text GLabel 7800 5600 2    50   Input ~ 0
IMU_CS_18
Text GLabel 7750 5300 2    50   Input ~ 0
BME_CS_18
Text GLabel 6500 5000 0    50   Input ~ 0
SPI_MISO_33
Text GLabel 6500 5100 0    50   Input ~ 0
SPI_MOSI_33
Text GLabel 6500 5200 0    50   Input ~ 0
SPI_CLK_33
Text GLabel 6500 5300 0    50   Input ~ 0
IMU_CS_33
Text GLabel 6500 5600 0    50   Input ~ 0
BME_CS_33
Wire Wire Line
	7750 5300 7700 5300
Wire Wire Line
	7800 5900 7700 5900
Wire Wire Line
	7800 5800 7700 5800
Wire Wire Line
	7800 5700 7700 5700
Wire Wire Line
	7800 5600 7700 5600
Wire Wire Line
	6500 5100 6600 5100
Wire Wire Line
	6500 5000 6600 5000
Wire Wire Line
	6500 5300 6600 5300
Wire Wire Line
	6500 5200 6600 5200
Wire Wire Line
	6500 5600 6600 5600
Text GLabel 4700 5850 2    50   Input ~ 0
SDA
Text GLabel 4700 5950 2    50   Input ~ 0
SCL
Wire Wire Line
	4700 5850 4400 5850
Wire Wire Line
	4400 5950 4700 5950
$Comp
L power:GNDREF #PWR0133
U 1 1 60A1DE54
P 4000 6550
F 0 "#PWR0133" H 4000 6300 50  0001 C CNN
F 1 "GNDREF" H 4005 6377 50  0001 C CNN
F 2 "" H 4000 6550 50  0001 C CNN
F 3 "" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:INA219AxD U2
U 1 1 60A1725E
P 4000 6050
F 0 "U2" H 3543 6631 50  0000 C CNN
F 1 "INA219AxD" H 3543 6540 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4800 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 4350 5950 50  0001 C CNN
	1    4000 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 60A1ED8C
P 4250 5350
F 0 "C9" H 4365 5396 50  0000 L CNN
F 1 "100nF" H 4365 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4288 5200 50  0001 C CNN
F 3 "~" H 4250 5350 50  0001 C CNN
	1    4250 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0134
U 1 1 60A2003A
P 4000 5000
F 0 "#PWR0134" H 4000 4850 50  0001 C CNN
F 1 "+3V3" H 4015 5173 50  0000 C CNN
F 2 "" H 4000 5000 50  0001 C CNN
F 3 "" H 4000 5000 50  0001 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5000 4000 5200
Wire Wire Line
	4250 5200 4000 5200
Connection ~ 4000 5200
Wire Wire Line
	4000 5200 4000 5650
$Comp
L power:GNDREF #PWR0135
U 1 1 60A25263
P 4250 5550
F 0 "#PWR0135" H 4250 5300 50  0001 C CNN
F 1 "GNDREF" H 4255 5377 50  0001 C CNN
F 2 "" H 4250 5550 50  0001 C CNN
F 3 "" H 4250 5550 50  0001 C CNN
	1    4250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5500 4250 5550
$Comp
L Device:R R5
U 1 1 60A32138
P 3100 5900
F 0 "R5" V 3307 5900 50  0000 C CNN
F 1 "0" V 3216 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3030 5900 50  0001 C CNN
F 3 "~" H 3100 5900 50  0001 C CNN
	1    3100 5900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 60A331B9
P 3100 6200
F 0 "R6" V 2981 6200 50  0000 C CNN
F 1 "0" V 2903 6200 50  0000 C BNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3030 6200 50  0001 C CNN
F 3 "~" H 3100 6200 50  0001 C CNN
	1    3100 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C8
U 1 1 60A408CD
P 3350 6050
F 0 "C8" H 3465 6096 50  0000 L CNN
F 1 "DNC" H 3465 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3388 5900 50  0001 C CNN
F 3 "~" H 3350 6050 50  0001 C CNN
	1    3350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5900 3350 5900
Wire Wire Line
	3550 5900 3550 5950
Wire Wire Line
	3550 5950 3600 5950
Connection ~ 3350 5900
Wire Wire Line
	3350 5900 3550 5900
Wire Wire Line
	3250 6200 3350 6200
Wire Wire Line
	3550 6200 3550 6150
Wire Wire Line
	3550 6150 3600 6150
Connection ~ 3350 6200
Wire Wire Line
	3350 6200 3550 6200
Wire Wire Line
	4000 6450 4000 6500
$Comp
L power:+BATT #PWR0136
U 1 1 60A576AA
P 2700 5700
F 0 "#PWR0136" H 2700 5550 50  0001 C CNN
F 1 "+BATT" H 2715 5873 50  0000 C CNN
F 2 "" H 2700 5700 50  0001 C CNN
F 3 "" H 2700 5700 50  0001 C CNN
	1    2700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0137
U 1 1 60A5EBF9
P 2700 6850
F 0 "#PWR0137" H 2700 6700 50  0001 C CNN
F 1 "VCC" H 2715 7023 50  0000 C CNN
F 2 "" H 2700 6850 50  0001 C CNN
F 3 "" H 2700 6850 50  0001 C CNN
	1    2700 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 6150 4550 6150
Wire Wire Line
	4550 6500 4000 6500
Wire Wire Line
	4550 6150 4550 6250
Connection ~ 4000 6500
Wire Wire Line
	4000 6500 4000 6550
Wire Wire Line
	4400 6250 4550 6250
Connection ~ 4550 6250
Wire Wire Line
	4550 6250 4550 6500
Text Notes 3650 6750 0    50   ~ 0
Slave address: 1000000
Wire Wire Line
	6350 1550 6450 1550
Wire Wire Line
	6350 1650 6450 1650
Wire Wire Line
	6350 1750 6450 1750
Wire Wire Line
	2950 1400 2900 1400
Wire Wire Line
	2950 1600 2900 1600
Wire Wire Line
	2950 1800 2900 1800
Wire Wire Line
	2900 2000 3600 2000
Wire Wire Line
	3600 1950 3600 2000
Connection ~ 3600 2000
Wire Wire Line
	3600 2000 3750 2000
Wire Wire Line
	3600 1600 3600 1650
$Comp
L Device:C C14
U 1 1 60AB39EC
P 8550 5650
F 0 "C14" H 8665 5696 50  0000 L CNN
F 1 "100nF" H 8665 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 8588 5500 50  0001 C CNN
F 3 "~" H 8550 5650 50  0001 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 60AB76A4
P 5650 5550
F 0 "C15" H 5765 5596 50  0000 L CNN
F 1 "100nF" H 5765 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 5688 5400 50  0001 C CNN
F 3 "~" H 5650 5550 50  0001 C CNN
	1    5650 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 60ABB27E
P 8550 5850
F 0 "#PWR01" H 8550 5600 50  0001 C CNN
F 1 "GNDREF" H 8555 5677 50  0001 C CNN
F 2 "" H 8550 5850 50  0001 C CNN
F 3 "" H 8550 5850 50  0001 C CNN
	1    8550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5800 8550 5850
$Comp
L power:GNDREF #PWR02
U 1 1 60ACAE6A
P 5650 5750
F 0 "#PWR02" H 5650 5500 50  0001 C CNN
F 1 "GNDREF" H 5655 5577 50  0001 C CNN
F 2 "" H 5650 5750 50  0001 C CNN
F 3 "" H 5650 5750 50  0001 C CNN
	1    5650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5700 5650 5750
$Comp
L Device:R R4
U 1 1 60AE3FA9
P 2700 6050
F 0 "R4" V 2907 6050 50  0000 C CNN
F 1 "0.05" V 2816 6050 50  0000 C CNN
F 2 "User:CSS2H-3920" V 2630 6050 50  0001 C CNN
F 3 "~" H 2700 6050 50  0001 C CNN
	1    2700 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 5700 2700 5900
Wire Wire Line
	2950 5900 2700 5900
Connection ~ 2700 5900
Wire Wire Line
	2950 6200 2700 6200
Connection ~ 2700 6200
Wire Wire Line
	2700 6200 2700 6600
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 60B5A1C5
P 2350 6600
F 0 "J15" H 2268 6375 50  0000 C CNN
F 1 "Conn_01x01" H 2268 6466 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.3mm_L11.0mm" H 2350 6600 50  0001 C CNN
F 3 "~" H 2350 6600 50  0001 C CNN
	1    2350 6600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 6600 2700 6600
Connection ~ 2700 6600
Wire Wire Line
	2700 6600 2700 6850
$Comp
L RPHat_V2-rescue:TXB0108DQSR-User IC1
U 1 1 60AA4FBA
P 6600 5000
AR Path="/60AA4FBA" Ref="IC1"  Part="1" 
AR Path="/6092276E/60AA4FBA" Ref="IC1"  Part="1" 
F 0 "IC1" H 7150 5265 50  0000 C CNN
F 1 "TXB0108DQSR" H 7150 5174 50  0000 C CNN
F 2 "User:TXB0108DQSR" H 7550 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/txb0108" H 7550 5000 50  0001 L CNN
F 4 "8-Bit Bidirectional Voltage-Level Shifter with Auto Direction Sensing and +/-15-kV ESD Protect" H 7550 4900 50  0001 L CNN "Description"
F 5 "0" H 7550 4800 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 7550 4700 50  0001 L CNN "Manufacturer_Name"
F 7 "TXB0108DQSR" H 7550 4600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-TXB0108DQSR" H 7550 4500 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/TXB0108DQSR?qs=EuM%2FBx4ov4SMZCOlCh%2FWxA%3D%3D" H 7550 4400 50  0001 L CNN "Mouser Price/Stock"
F 10 "TXB0108DQSR" H 7550 4300 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/txb0108dqsr/texas-instruments" H 7550 4200 50  0001 L CNN "Arrow Price/Stock"
	1    6600 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5500 8550 5400
Connection ~ 8550 5500
Text GLabel 7800 5800 2    50   Input ~ 0
SPI_MOSI_18
Text GLabel 7800 5900 2    50   Input ~ 0
SPI_MISO_18
Wire Wire Line
	7700 5500 8550 5500
Wire Wire Line
	6600 5500 6500 5500
Wire Wire Line
	6500 5500 6500 5400
Wire Wire Line
	6500 5400 6600 5400
Wire Wire Line
	6500 5400 5650 5400
Connection ~ 6500 5400
Connection ~ 5650 5400
Wire Wire Line
	1500 2400 2200 2400
Wire Wire Line
	1500 1600 1500 2400
Connection ~ 2200 2400
Wire Wire Line
	1050 2400 1500 2400
Wire Wire Line
	1050 1600 1050 2400
Connection ~ 1500 2400
Wire Wire Line
	5550 1800 5550 1850
Connection ~ 5550 1850
Wire Wire Line
	5550 1850 5450 1850
Wire Wire Line
	5550 1850 6450 1850
Wire Wire Line
	5450 2150 6450 2150
Text GLabel 7750 5200 2    50   Input ~ 0
IMU_INT_18
Wire Wire Line
	7750 5200 7700 5200
Text GLabel 6550 5700 0    50   Input ~ 0
IMU_INT_33
Wire Wire Line
	6550 5700 6600 5700
$Comp
L power:+1V8 #PWR0130
U 1 1 60C17D10
P 8550 5400
F 0 "#PWR0130" H 8550 5250 50  0001 C CNN
F 1 "+1V8" H 8565 5573 50  0000 C CNN
F 2 "" H 8550 5400 50  0001 C CNN
F 3 "" H 8550 5400 50  0001 C CNN
	1    8550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60EA1BC4
P 7950 5400
F 0 "#PWR?" H 7950 5150 50  0001 C CNN
F 1 "GNDREF" H 7955 5227 50  0001 C CNN
F 2 "" H 7950 5400 50  0001 C CNN
F 3 "" H 7950 5400 50  0001 C CNN
	1    7950 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 5400 7950 5400
$EndSCHEMATC
