EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L teensy:Teensy4.0 U1
U 1 1 607F5551
P 6350 3000
F 0 "U1" H 6350 4615 50  0000 C CNN
F 1 "Teensy4.0" H 6350 4524 50  0000 C CNN
F 2 "teensy:Teensy40" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    6350 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 607F9F91
P 4800 1700
F 0 "#PWR0101" H 4800 1450 50  0001 C CNN
F 1 "GNDREF" H 4805 1527 50  0000 C CNN
F 2 "" H 4800 1700 50  0001 C CNN
F 3 "" H 4800 1700 50  0001 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1650 4800 1650
Wire Wire Line
	4800 1650 4800 1700
$Comp
L power:GNDREF #PWR0102
U 1 1 607FDA72
P 2700 4250
F 0 "#PWR0102" H 2700 4000 50  0001 C CNN
F 1 "GNDREF" H 2705 4077 50  0000 C CNN
F 2 "" H 2700 4250 50  0001 C CNN
F 3 "" H 2700 4250 50  0001 C CNN
	1    2700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4100 2400 4200
Wire Wire Line
	2400 4200 2500 4200
Wire Wire Line
	2700 4200 2700 4250
Wire Wire Line
	2700 4100 2700 4200
Connection ~ 2700 4200
Wire Wire Line
	2600 4100 2600 4200
Connection ~ 2600 4200
Wire Wire Line
	2600 4200 2700 4200
Wire Wire Line
	2500 4100 2500 4200
Connection ~ 2500 4200
Wire Wire Line
	2500 4200 2600 4200
Wire Wire Line
	2800 4100 2800 4200
Wire Wire Line
	2800 4200 2700 4200
Wire Wire Line
	3100 4100 3100 4200
Wire Wire Line
	3100 4200 3000 4200
Connection ~ 2800 4200
Wire Wire Line
	3000 4100 3000 4200
Connection ~ 3000 4200
Wire Wire Line
	3000 4200 2900 4200
Wire Wire Line
	2900 4100 2900 4200
Connection ~ 2900 4200
Wire Wire Line
	2900 4200 2800 4200
$Comp
L power:+5V #PWR0103
U 1 1 60802903
P 2600 1250
F 0 "#PWR0103" H 2600 1100 50  0001 C CNN
F 1 "+5V" H 2615 1423 50  0000 C CNN
F 2 "" H 2600 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1500 2700 1350
Wire Wire Line
	2700 1350 2600 1350
Wire Wire Line
	2600 1350 2600 1250
Wire Wire Line
	2600 1500 2600 1350
Connection ~ 2600 1350
$Comp
L power:+5V #PWR0104
U 1 1 60809896
P 7750 3950
F 0 "#PWR0104" H 7750 3800 50  0001 C CNN
F 1 "+5V" H 7765 4123 50  0000 C CNN
F 2 "" H 7750 3950 50  0001 C CNN
F 3 "" H 7750 3950 50  0001 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3950 7450 3950
$Comp
L power:GNDREF #PWR0105
U 1 1 6080C260
P 7750 4050
F 0 "#PWR0105" H 7750 3800 50  0001 C CNN
F 1 "GNDREF" H 7755 3877 50  0000 C CNN
F 2 "" H 7750 4050 50  0001 C CNN
F 3 "" H 7750 4050 50  0001 C CNN
	1    7750 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 4050 7450 4050
Text GLabel 4850 2650 0    50   Input ~ 0
PWMrightWheel
Text GLabel 4850 2250 0    50   Input ~ 0
PWMLeftWheel
Wire Wire Line
	5250 2250 4850 2250
Wire Wire Line
	4850 2650 5250 2650
Text GLabel 5100 1750 0    50   Input ~ 0
Teensy_RX
Wire Wire Line
	5100 1750 5250 1750
Text GLabel 5100 1850 0    50   Input ~ 0
Teensy_TX
Wire Wire Line
	5100 1850 5250 1850
Text GLabel 5100 1950 0    50   Input ~ 0
pin2
Text GLabel 5100 2050 0    50   Input ~ 0
pin3
Wire Wire Line
	5250 1950 5100 1950
Wire Wire Line
	5250 2050 5100 2050
Text GLabel 5100 2150 0    50   Input ~ 0
pin4
Wire Wire Line
	5100 2150 5250 2150
Text GLabel 5100 2350 0    50   Input ~ 0
pin6
Text GLabel 5100 2450 0    50   Input ~ 0
pin7
Text GLabel 5100 2550 0    50   Input ~ 0
pin8
Text GLabel 5100 2750 0    50   Input ~ 0
pin10
Text GLabel 5100 2850 0    50   Input ~ 0
pin11
Text GLabel 5100 2950 0    50   Input ~ 0
pin12
Text GLabel 5100 3550 0    50   Input ~ 0
pin13
Text GLabel 5100 3650 0    50   Input ~ 0
pin14
Text GLabel 5100 3750 0    50   Input ~ 0
pin15
Text GLabel 5100 3850 0    50   Input ~ 0
pin16
Text GLabel 5100 3950 0    50   Input ~ 0
pin17
Text GLabel 5100 4050 0    50   Input ~ 0
pin18
Text GLabel 5100 4150 0    50   Input ~ 0
pin19
Text GLabel 5100 4250 0    50   Input ~ 0
pin20
Text GLabel 5100 4350 0    50   Input ~ 0
pin21
Text GLabel 7600 4350 2    50   Input ~ 0
pin22
Text GLabel 7600 4250 2    50   Input ~ 0
pin23
Wire Wire Line
	5100 2350 5250 2350
Wire Wire Line
	5100 2450 5250 2450
Wire Wire Line
	5100 2550 5250 2550
Wire Wire Line
	5100 2750 5250 2750
Wire Wire Line
	5100 2850 5250 2850
Wire Wire Line
	5100 2950 5250 2950
Wire Wire Line
	5100 3550 5250 3550
Wire Wire Line
	5100 3650 5250 3650
Wire Wire Line
	5100 3750 5250 3750
Wire Wire Line
	5100 3850 5250 3850
Wire Wire Line
	5100 3950 5250 3950
Wire Wire Line
	5100 4050 5250 4050
Wire Wire Line
	5100 4150 5250 4150
Wire Wire Line
	5100 4250 5250 4250
Wire Wire Line
	5100 4350 5250 4350
Wire Wire Line
	7600 4250 7450 4250
Wire Wire Line
	7600 4350 7450 4350
$Comp
L power:+3V3 #PWR0106
U 1 1 60836953
P 2900 1250
F 0 "#PWR0106" H 2900 1100 50  0001 C CNN
F 1 "+3V3" H 2915 1423 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1250 2900 1350
Wire Wire Line
	3000 1500 3000 1350
Wire Wire Line
	3000 1350 2900 1350
Connection ~ 2900 1350
Wire Wire Line
	2900 1350 2900 1500
Text GLabel 1850 1900 0    50   Input ~ 0
Teensy_RX
Text GLabel 1850 2000 0    50   Input ~ 0
Teensy_TX
Wire Wire Line
	1850 1900 2000 1900
Wire Wire Line
	1850 2000 2000 2000
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 60869015
P 10500 1300
F 0 "J2" H 10580 1292 50  0000 L CNN
F 1 "Connector_PinHeader_1.00mm:PinHeader_1x12_P1.00mm_Vertical" H 10580 1201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 10500 1300 50  0001 C CNN
F 3 "~" H 10500 1300 50  0001 C CNN
	1    10500 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J3
U 1 1 6086B9BD
P 10500 2700
F 0 "J3" H 10580 2692 50  0000 L CNN
F 1 "Conn_01x12" H 10580 2601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 10500 2700 50  0001 C CNN
F 3 "~" H 10500 2700 50  0001 C CNN
	1    10500 2700
	1    0    0    -1  
$EndComp
Text GLabel 10150 800  0    50   Input ~ 0
pin2
Text GLabel 10150 900  0    50   Input ~ 0
pin3
Wire Wire Line
	10300 800  10150 800 
Wire Wire Line
	10300 900  10150 900 
Text GLabel 10150 1000 0    50   Input ~ 0
pin4
Wire Wire Line
	10150 1000 10300 1000
Text GLabel 10150 1100 0    50   Input ~ 0
pin10
Text GLabel 10150 1200 0    50   Input ~ 0
pin11
Text GLabel 10150 1300 0    50   Input ~ 0
pin12
Wire Wire Line
	10150 1100 10300 1100
Wire Wire Line
	10150 1200 10300 1200
Wire Wire Line
	10150 1300 10300 1300
Text GLabel 10150 2200 0    50   Input ~ 0
pin13
Text GLabel 10150 2300 0    50   Input ~ 0
pin14
Text GLabel 10150 2400 0    50   Input ~ 0
pin15
Text GLabel 10150 2500 0    50   Input ~ 0
pin16
Text GLabel 10150 2600 0    50   Input ~ 0
pin17
Text GLabel 10150 2700 0    50   Input ~ 0
pin18
Text GLabel 10150 2800 0    50   Input ~ 0
pin19
Text GLabel 10150 2900 0    50   Input ~ 0
pin20
Text GLabel 10150 3000 0    50   Input ~ 0
pin21
Wire Wire Line
	10150 2200 10300 2200
Wire Wire Line
	10150 2300 10300 2300
Wire Wire Line
	10150 2400 10300 2400
Wire Wire Line
	10150 2500 10300 2500
Wire Wire Line
	10150 2600 10300 2600
Wire Wire Line
	10150 2700 10300 2700
Wire Wire Line
	10150 2800 10300 2800
Wire Wire Line
	10150 2900 10300 2900
Wire Wire Line
	10150 3000 10300 3000
Text GLabel 10150 3100 0    50   Input ~ 0
pin22
Text GLabel 10150 3200 0    50   Input ~ 0
pin23
Wire Wire Line
	10150 3200 10300 3200
Wire Wire Line
	10150 3100 10300 3100
Text GLabel 3800 2200 2    50   Input ~ 0
SDA
Text GLabel 3800 2300 2    50   Input ~ 0
SCL
Wire Wire Line
	3800 2300 3600 2300
Wire Wire Line
	3800 2200 3600 2200
Text GLabel 10100 1600 0    50   Input ~ 0
SDA
Text GLabel 10100 1500 0    50   Input ~ 0
SCL
Wire Wire Line
	10100 1500 10300 1500
Wire Wire Line
	10100 1600 10300 1600
Text GLabel 3950 1400 0    50   Input ~ 0
SDA
Text GLabel 3950 1300 0    50   Input ~ 0
SCL
$Comp
L Device:R R1
U 1 1 6088E03E
P 4200 1050
F 0 "R1" H 4270 1096 50  0000 L CNN
F 1 "R" H 4270 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 4130 1050 50  0001 C CNN
F 3 "~" H 4200 1050 50  0001 C CNN
	1    4200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6088E7EC
P 4450 1050
F 0 "R2" H 4520 1096 50  0000 L CNN
F 1 "R" H 4520 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Box_L13.0mm_W4.0mm_P9.00mm" V 4380 1050 50  0001 C CNN
F 3 "~" H 4450 1050 50  0001 C CNN
	1    4450 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0107
U 1 1 60890592
P 4300 750
F 0 "#PWR0107" H 4300 600 50  0001 C CNN
F 1 "+3V3" H 4315 923 50  0000 C CNN
F 2 "" H 4300 750 50  0001 C CNN
F 3 "" H 4300 750 50  0001 C CNN
	1    4300 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 750  4300 850 
Wire Wire Line
	4200 900  4200 850 
Wire Wire Line
	4200 850  4300 850 
Wire Wire Line
	4450 900  4450 850 
Wire Wire Line
	4450 850  4300 850 
Connection ~ 4300 850 
Wire Wire Line
	4200 1300 4200 1200
Wire Wire Line
	3950 1300 4200 1300
Wire Wire Line
	4450 1400 4450 1200
$Comp
L power:GNDREF #PWR0108
U 1 1 608A4177
P 9750 1950
F 0 "#PWR0108" H 9750 1700 50  0001 C CNN
F 1 "GNDREF" H 9755 1777 50  0000 C CNN
F 2 "" H 9750 1950 50  0001 C CNN
F 3 "" H 9750 1950 50  0001 C CNN
	1    9750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1700 9750 1700
Wire Wire Line
	9750 1700 9750 1800
Wire Wire Line
	10300 1800 9750 1800
Connection ~ 9750 1800
Wire Wire Line
	9750 1800 9750 1900
Wire Wire Line
	10300 1900 9750 1900
Connection ~ 9750 1900
Wire Wire Line
	9750 1900 9750 1950
$Comp
L power:+3V3 #PWR0109
U 1 1 608AED04
P 9650 1400
F 0 "#PWR0109" H 9650 1250 50  0001 C CNN
F 1 "+3V3" H 9665 1573 50  0000 C CNN
F 2 "" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1400 9650 1400
$Comp
L power:+5V #PWR0110
U 1 1 608B6D1B
P 9650 3200
F 0 "#PWR0110" H 9650 3050 50  0001 C CNN
F 1 "+5V" H 9665 3373 50  0000 C CNN
F 2 "" H 9650 3200 50  0001 C CNN
F 3 "" H 9650 3200 50  0001 C CNN
	1    9650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3300 9650 3300
Wire Wire Line
	9650 3300 9650 3200
Wire Wire Line
	3950 1400 4450 1400
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 607EF7B9
P 2800 2800
F 0 "J1" H 2800 4281 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2800 4190 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2800 2800 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
