EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPHat_V2-rescue:RPMB5.0-3.0-RPMB5.0-3.0 PS?
U 1 1 608338A4
P 2200 1250
F 0 "PS?" H 2850 1515 50  0000 C CNN
F 1 "RPMB5.0-3.0" H 2850 1424 50  0000 C CNN
F 2 "RPMB5030" H 3350 1350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/RPMB5.0-3.0.pdf" H 3350 1250 50  0001 L CNN
F 4 "Non-Isolated DC/DC Converters 5.5-36Vi 5Vo 3A 1-9VTrim Reg" H 3350 1150 50  0001 L CNN "Description"
F 5 "3.75" H 3350 1050 50  0001 L CNN "Height"
F 6 "RECOM Power" H 3350 950 50  0001 L CNN "Manufacturer_Name"
F 7 "RPMB5.0-3.0" H 3350 850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 3350 750 50  0001 L CNN "Arrow Part Number"
F 9 "" H 3350 650 50  0001 L CNN "Arrow Price/Stock"
F 10 "919-RPMB5.0-3.0" H 3350 550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/RECOM-Power/RPMB50-30?qs=wnTfsH77Xs7FdqATAuFwWQ%3D%3D" H 3350 450 50  0001 L CNN "Mouser Price/Stock"
	1    2200 1250
	1    0    0    -1  
$EndComp
$Comp
L RPHat_V2-rescue:Teensy4.0-teensy U?
U 1 1 608349BD
P 8050 2350
F 0 "U?" H 8050 3965 50  0000 C CNN
F 1 "Teensy4.0" H 8050 3874 50  0000 C CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "" H 7650 2550 50  0001 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J?
U 1 1 608367C5
P 2850 5950
F 0 "J?" H 2165 7431 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2165 7340 50  0000 C CNN
F 2 "" H 2850 5950 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 60839FA9
P 9450 3300
F 0 "SW?" H 9450 3585 50  0000 C CNN
F 1 "SW_DPDT_x2" H 9450 3494 50  0000 C CNN
F 2 "" H 9450 3300 50  0001 C CNN
F 3 "~" H 9450 3300 50  0001 C CNN
	1    9450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60850A7F
P 9800 3100
F 0 "#PWR?" H 9800 2950 50  0001 C CNN
F 1 "+5V" H 9815 3273 50  0000 C CNN
F 2 "" H 9800 3100 50  0001 C CNN
F 3 "" H 9800 3100 50  0001 C CNN
	1    9800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3200 9800 3200
Wire Wire Line
	9800 3200 9800 3100
Wire Wire Line
	9250 3300 9150 3300
$Comp
L Device:C C?
U 1 1 60855818
P 1400 1400
F 0 "C?" H 1515 1446 50  0000 L CNN
F 1 "10uF" H 1515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 1438 1250 50  0001 C CNN
F 3 "~" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60856C0C
P 1100 1400
F 0 "C?" H 1215 1446 50  0000 L CNN
F 1 "10uF" H 1215 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 1138 1250 50  0001 C CNN
F 3 "~" H 1100 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6085B575
P 800 1400
F 0 "C?" H 915 1446 50  0000 L CNN
F 1 "10uF" H 915 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 838 1250 50  0001 C CNN
F 3 "~" H 800 1400 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6085D5E0
P 800 1650
F 0 "#PWR?" H 800 1400 50  0001 C CNN
F 1 "GNDREF" H 805 1477 50  0001 C CNN
F 2 "" H 800 1650 50  0001 C CNN
F 3 "" H 800 1650 50  0001 C CNN
	1    800  1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6085DEB3
P 1100 1650
F 0 "#PWR?" H 1100 1400 50  0001 C CNN
F 1 "GNDREF" H 1105 1477 50  0001 C CNN
F 2 "" H 1100 1650 50  0001 C CNN
F 3 "" H 1100 1650 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6085E1F0
P 1400 1650
F 0 "#PWR?" H 1400 1400 50  0001 C CNN
F 1 "GNDREF" H 1405 1477 50  0001 C CNN
F 2 "" H 1400 1650 50  0001 C CNN
F 3 "" H 1400 1650 50  0001 C CNN
	1    1400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1550 800  1650
Wire Wire Line
	1100 1550 1100 1650
Wire Wire Line
	1400 1550 1400 1650
$Comp
L pspice:INDUCTOR L?
U 1 1 6085F0A3
P 1700 1250
F 0 "L?" H 1700 1465 50  0000 C CNN
F 1 "2.2uH" H 1700 1374 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric_Pad1.43x2.20mm_HandSolder" H 1700 1250 50  0001 C CNN
F 3 "~" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60862A5D
P 2000 1400
F 0 "C?" H 2115 1446 50  0000 L CNN
F 1 "C" H 2115 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 2038 1250 50  0001 C CNN
F 3 "~" H 2000 1400 50  0001 C CNN
	1    2000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1250 2000 1250
Connection ~ 2000 1250
Wire Wire Line
	2000 1250 2100 1250
Wire Wire Line
	1450 1250 1400 1250
Connection ~ 1100 1250
Wire Wire Line
	1100 1250 800  1250
Connection ~ 1400 1250
Wire Wire Line
	1400 1250 1100 1250
Wire Wire Line
	800  1050 800  1250
Connection ~ 800  1250
Wire Wire Line
	2200 1350 2100 1350
Wire Wire Line
	2100 1350 2100 1250
Connection ~ 2100 1250
Wire Wire Line
	2100 1250 2200 1250
$Comp
L power:GNDREF #PWR?
U 1 1 60862A63
P 1800 1600
F 0 "#PWR?" H 1800 1350 50  0001 C CNN
F 1 "GNDREF" H 1805 1427 50  0001 C CNN
F 2 "" H 1800 1600 50  0001 C CNN
F 3 "" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1550 1800 1600
Wire Wire Line
	2200 1450 2200 1550
Wire Wire Line
	2200 1550 2000 1550
Connection ~ 2200 1550
Connection ~ 2000 1550
$Comp
L power:+5V #PWR?
U 1 1 6086D5CD
P 2150 1650
F 0 "#PWR?" H 2150 1500 50  0001 C CNN
F 1 "+5V" V 2165 1778 50  0000 L CNN
F 2 "" H 2150 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0001 C CNN
	1    2150 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 1650 2150 1650
$Comp
L power:+5V #PWR?
U 1 1 608702EB
P 2150 2150
F 0 "#PWR?" H 2150 2000 50  0001 C CNN
F 1 "+5V" V 2165 2278 50  0000 L CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 2150 2150 2150
$Comp
L power:GNDREF #PWR?
U 1 1 60871C04
P 1800 2100
F 0 "#PWR?" H 1800 1850 50  0001 C CNN
F 1 "GNDREF" H 1805 1927 50  0001 C CNN
F 2 "" H 1800 2100 50  0001 C CNN
F 3 "" H 1800 2100 50  0001 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2050 1800 2100
Wire Wire Line
	2200 1750 2050 1750
Wire Wire Line
	2050 1750 2050 1850
Wire Wire Line
	2050 2050 1800 2050
Wire Wire Line
	2200 1850 2050 1850
Connection ~ 2050 1850
Wire Wire Line
	2050 1850 2050 1950
Wire Wire Line
	2200 1950 2050 1950
Connection ~ 2050 1950
Wire Wire Line
	2050 1950 2050 2050
Wire Wire Line
	2200 2050 2050 2050
Connection ~ 2050 2050
$Comp
L power:GNDREF #PWR?
U 1 1 60875D28
P 2000 2500
F 0 "#PWR?" H 2000 2250 50  0001 C CNN
F 1 "GNDREF" H 2005 2327 50  0001 C CNN
F 2 "" H 2000 2500 50  0001 C CNN
F 3 "" H 2000 2500 50  0001 C CNN
	1    2000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2350 2000 2350
Wire Wire Line
	2000 2350 2000 2450
Wire Wire Line
	2200 2450 2000 2450
Connection ~ 2000 2450
Wire Wire Line
	2000 2450 2000 2500
$Comp
L power:GNDREF #PWR?
U 1 1 6087C04F
P 3850 2450
F 0 "#PWR?" H 3850 2200 50  0001 C CNN
F 1 "GNDREF" H 3855 2277 50  0001 C CNN
F 2 "" H 3850 2450 50  0001 C CNN
F 3 "" H 3850 2450 50  0001 C CNN
	1    3850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1250 3850 1250
Wire Wire Line
	3850 1250 3850 1550
Wire Wire Line
	3500 1550 3850 1550
Connection ~ 3850 1550
Wire Wire Line
	3850 1550 3850 1650
Wire Wire Line
	3500 1650 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 3850 1750
Wire Wire Line
	3500 1750 3850 1750
Connection ~ 3850 1750
Wire Wire Line
	3850 1750 3850 1850
Wire Wire Line
	3500 1850 3850 1850
Connection ~ 3850 1850
Wire Wire Line
	3850 1850 3850 2150
Wire Wire Line
	3500 2150 3850 2150
Connection ~ 3850 2150
Wire Wire Line
	3850 2150 3850 2200
Wire Wire Line
	3500 2250 3850 2250
Connection ~ 3850 2250
Wire Wire Line
	3850 2250 3850 2450
$Comp
L Device:R R?
U 1 1 60883081
P 4100 1650
F 0 "R?" H 4170 1696 50  0000 L CNN
F 1 "R" H 4170 1605 50  0000 L CNN
F 2 "" V 4030 1650 50  0001 C CNN
F 3 "~" H 4100 1650 50  0001 C CNN
	1    4100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1450 4100 1450
Wire Wire Line
	4100 1450 4100 1500
$Comp
L Device:LED D?
U 1 1 60884984
P 4100 2000
F 0 "D?" V 4139 1882 50  0000 R CNN
F 1 "LED" V 4048 1882 50  0000 R CNN
F 2 "" H 4100 2000 50  0001 C CNN
F 3 "~" H 4100 2000 50  0001 C CNN
	1    4100 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 1800 4100 1850
Wire Wire Line
	4100 2150 4100 2200
Wire Wire Line
	4100 2200 3850 2200
Connection ~ 3850 2200
Wire Wire Line
	3850 2200 3850 2250
$Comp
L Device:LED D?
U 1 1 6088E6FB
P 9400 3600
F 0 "D?" V 9439 3482 50  0000 R CNN
F 1 "LED" V 9348 3482 50  0000 R CNN
F 2 "" H 9400 3600 50  0001 C CNN
F 3 "~" H 9400 3600 50  0001 C CNN
	1    9400 3600
	-1   0    0    1   
$EndComp
Connection ~ 9250 3300
$Comp
L Device:R R?
U 1 1 60890E09
P 9600 3800
F 0 "R?" H 9670 3846 50  0000 L CNN
F 1 "4.7k" H 9670 3755 50  0000 L CNN
F 2 "" V 9530 3800 50  0001 C CNN
F 3 "~" H 9600 3800 50  0001 C CNN
	1    9600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3600 9600 3650
$Comp
L power:GNDREF #PWR?
U 1 1 6089275F
P 9600 4000
F 0 "#PWR?" H 9600 3750 50  0001 C CNN
F 1 "GNDREF" H 9605 3827 50  0001 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3950 9600 4000
Wire Wire Line
	9250 3600 9250 3300
Wire Wire Line
	9550 3600 9600 3600
$Comp
L power:+5V #PWR?
U 1 1 608B20C1
P 4300 1300
F 0 "#PWR?" H 4300 1150 50  0001 C CNN
F 1 "+5V" V 4315 1428 50  0000 L CNN
F 2 "" H 4300 1300 50  0001 C CNN
F 3 "" H 4300 1300 50  0001 C CNN
	1    4300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1650 4300 2200
Wire Wire Line
	4300 2200 4100 2200
Connection ~ 4100 2200
$Comp
L Device:C C?
U 1 1 608A9FCA
P 4300 1500
F 0 "C?" H 4415 1546 50  0000 L CNN
F 1 "C" H 4415 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4338 1350 50  0001 C CNN
F 3 "~" H 4300 1500 50  0001 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1350 4300 1350
Wire Wire Line
	4300 1350 4300 1300
Connection ~ 4300 1350
Text GLabel 1800 5050 0    50   Input ~ 0
Teensy_Uart_RX
Text GLabel 1800 5150 0    50   Input ~ 0
Teensy_Uart_TX
Wire Wire Line
	1800 5050 2050 5050
Wire Wire Line
	2050 5150 1800 5150
Text GLabel 6800 1100 0    50   Input ~ 0
Teensy_Uart_RX
Text GLabel 6800 1200 0    50   Input ~ 0
Teensy_Uart_TX
Wire Wire Line
	6950 1100 6800 1100
Wire Wire Line
	6950 1200 6800 1200
$Sheet
S 7300 4700 1350 900 
U 6092276E
F0 "Sensor schematics" 50
F1 "Sensors.sch" 50
$EndSheet
$Sheet
S 8900 4700 1250 900 
U 6098D4A6
F0 "Hall_effect.sch" 50
F1 "Hall Effect Schematics.sch" 50
$EndSheet
$Sheet
S 5500 4700 1550 900 
U 609A082B
F0 "servos and motors" 50
F1 "Servos_Motors.sch" 50
$EndSheet
Text GLabel 6750 1300 0    50   Input ~ 0
PWM_Right
Text GLabel 6750 1400 0    50   Input ~ 0
PWM_Left
Wire Wire Line
	6750 1400 6950 1400
Wire Wire Line
	6750 1300 6950 1300
$Comp
L Device:Battery BT?
U 1 1 60A0D572
P 850 3350
F 0 "BT?" H 958 3396 50  0000 L CNN
F 1 "Battery" H 958 3305 50  0000 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x02_P2.00mm_Vertical" V 850 3410 50  0001 C CNN
F 3 "~" V 850 3410 50  0001 C CNN
	1    850  3350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 60A138F9
P 850 3000
F 0 "#PWR?" H 850 2850 50  0001 C CNN
F 1 "+BATT" H 865 3173 50  0000 C CNN
F 2 "" H 850 3000 50  0001 C CNN
F 3 "" H 850 3000 50  0001 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3150 850  3000
Text GLabel 3800 6250 2    50   Input ~ 0
SPI_MISO_33
Text GLabel 3800 6350 2    50   Input ~ 0
SPI_MOSI_33
Text GLabel 3800 6450 2    50   Input ~ 0
SPI_CLK_33
Text GLabel 1950 6250 0    50   Input ~ 0
IMU_CS_33
Text GLabel 1950 6150 0    50   Input ~ 0
BME_CS_33
Wire Wire Line
	3800 6250 3650 6250
Wire Wire Line
	3800 6350 3650 6350
Wire Wire Line
	3800 6450 3650 6450
Wire Wire Line
	1950 6250 2050 6250
Wire Wire Line
	1950 6150 2050 6150
Wire Wire Line
	850  3550 850  3800
$Comp
L power:VCC #PWR?
U 1 1 60A65488
P 800 1050
AR Path="/6092276E/60A65488" Ref="#PWR?"  Part="1" 
AR Path="/60A65488" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 800 900 50  0001 C CNN
F 1 "VCC" H 815 1223 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "" H 800 1050 50  0001 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60A67F58
P 850 3800
F 0 "#PWR?" H 850 3550 50  0001 C CNN
F 1 "GNDREF" H 855 3627 50  0001 C CNN
F 2 "" H 850 3800 50  0001 C CNN
F 3 "" H 850 3800 50  0001 C CNN
	1    850  3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A6AEA9
P 2650 4500
F 0 "#PWR?" H 2650 4350 50  0001 C CNN
F 1 "+5V" V 2665 4628 50  0000 L CNN
F 2 "" H 2650 4500 50  0001 C CNN
F 3 "" H 2650 4500 50  0001 C CNN
	1    2650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60A6C4F6
P 2950 4500
F 0 "#PWR?" H 2950 4350 50  0001 C CNN
F 1 "+3V3" H 2965 4673 50  0000 C CNN
F 2 "" H 2950 4500 50  0001 C CNN
F 3 "" H 2950 4500 50  0001 C CNN
	1    2950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4500 2650 4600
Wire Wire Line
	2650 4600 2750 4600
Wire Wire Line
	2750 4600 2750 4650
Connection ~ 2650 4600
Wire Wire Line
	2650 4600 2650 4650
Wire Wire Line
	2950 4500 2950 4600
Wire Wire Line
	2950 4600 3050 4600
Connection ~ 2950 4600
Wire Wire Line
	2950 4600 2950 4650
$Comp
L power:GNDREF #PWR?
U 1 1 60A746A9
P 2850 7400
F 0 "#PWR?" H 2850 7150 50  0001 C CNN
F 1 "GNDREF" H 2855 7227 50  0001 C CNN
F 2 "" H 2850 7400 50  0001 C CNN
F 3 "" H 2850 7400 50  0001 C CNN
	1    2850 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7250 2450 7400
Wire Wire Line
	3150 7250 3150 7400
Wire Wire Line
	3150 7400 3050 7400
Connection ~ 2850 7400
Wire Wire Line
	2850 7250 2850 7400
Wire Wire Line
	2950 7250 2950 7400
Connection ~ 2950 7400
Wire Wire Line
	2950 7400 2850 7400
Wire Wire Line
	3050 7250 3050 7400
Connection ~ 3050 7400
Wire Wire Line
	3050 7400 2950 7400
Wire Wire Line
	2750 7250 2750 7400
Connection ~ 2750 7400
Wire Wire Line
	2750 7400 2850 7400
Wire Wire Line
	2650 7250 2650 7400
Wire Wire Line
	2450 7400 2550 7400
Connection ~ 2650 7400
Wire Wire Line
	2650 7400 2750 7400
Wire Wire Line
	2550 7250 2550 7400
Connection ~ 2550 7400
Wire Wire Line
	2550 7400 2650 7400
Text GLabel 4450 5350 2    50   Input ~ 0
SDA
Text GLabel 4450 5450 2    50   Input ~ 0
SCL
$Comp
L Device:R R?
U 1 1 60A92742
P 4000 5100
AR Path="/6092276E/60A92742" Ref="R?"  Part="1" 
AR Path="/60A92742" Ref="R?"  Part="1" 
F 0 "R?" H 4070 5146 50  0000 L CNN
F 1 "TBU" H 4070 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3930 5100 50  0001 C CNN
F 3 "~" H 4000 5100 50  0001 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A95088
P 4300 5100
AR Path="/6092276E/60A95088" Ref="R?"  Part="1" 
AR Path="/60A95088" Ref="R?"  Part="1" 
F 0 "R?" H 4370 5146 50  0000 L CNN
F 1 "TBU" H 4370 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4230 5100 50  0001 C CNN
F 3 "~" H 4300 5100 50  0001 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5350 4000 5350
Wire Wire Line
	3650 5450 4300 5450
Wire Wire Line
	4300 5250 4300 5450
Connection ~ 4300 5450
Wire Wire Line
	4300 5450 4450 5450
Wire Wire Line
	4000 5250 4000 5350
Connection ~ 4000 5350
Wire Wire Line
	4000 5350 4450 5350
Wire Wire Line
	3050 4600 3050 4650
Wire Wire Line
	4300 4950 4300 4600
Wire Wire Line
	4300 4600 4000 4600
Connection ~ 3050 4600
Wire Wire Line
	4000 4950 4000 4600
Connection ~ 4000 4600
Wire Wire Line
	4000 4600 3050 4600
Text Notes 3600 4500 0    50   ~ 0
Pullups need to be calculated based \non slva689 application note from \ntexas instruments\n
Text GLabel 6750 1500 0    50   Input ~ 0
PWMservo_1
Text GLabel 9300 2500 2    50   Input ~ 0
Neopixels_1
Text GLabel 6750 1600 0    50   Input ~ 0
PWMservo_2
Text GLabel 6750 1700 0    50   Input ~ 0
PWMservo_3
Text GLabel 6750 1800 0    50   Input ~ 0
PWMservo_4
Text GLabel 6750 1900 0    50   Input ~ 0
PWMservo_5
Text GLabel 6750 2000 0    50   Input ~ 0
PWMservo_6
Text GLabel 9300 2400 2    50   Input ~ 0
Neopixels_2
$Comp
L power:GNDREF #PWR?
U 1 1 60ADCEA9
P 6850 1000
F 0 "#PWR?" H 6850 750 50  0001 C CNN
F 1 "GNDREF" H 6855 827 50  0001 C CNN
F 2 "" H 6850 1000 50  0001 C CNN
F 3 "" H 6850 1000 50  0001 C CNN
	1    6850 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 1000 6850 1000
Wire Wire Line
	1800 1550 2000 1550
Wire Wire Line
	6750 1500 6950 1500
Wire Wire Line
	6750 1600 6950 1600
Wire Wire Line
	6750 1700 6950 1700
Wire Wire Line
	6750 1800 6950 1800
Wire Wire Line
	6750 1900 6950 1900
Wire Wire Line
	6750 2000 6950 2000
Wire Wire Line
	9300 2400 9150 2400
Wire Wire Line
	9300 2500 9150 2500
$EndSCHEMATC
