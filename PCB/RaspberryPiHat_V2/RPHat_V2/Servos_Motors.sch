EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "PWM connectors and PWM controller"
Date "2021-05-15"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A115A
P 1150 950
F 0 "J?" H 1068 625 50  0000 C CNN
F 1 "Conn_01x03" H 1068 716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1150 950 50  0001 C CNN
F 3 "~" H 1150 950 50  0001 C CNN
	1    1150 950 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A366B
P 1150 1500
F 0 "J?" H 1068 1175 50  0000 C CNN
F 1 "Conn_01x03" H 1068 1266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 1500 50  0001 C CNN
F 3 "~" H 1150 1500 50  0001 C CNN
	1    1150 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A39CF
P 1150 2050
F 0 "J?" H 1068 1725 50  0000 C CNN
F 1 "Conn_01x03" H 1068 1816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 2050 50  0001 C CNN
F 3 "~" H 1150 2050 50  0001 C CNN
	1    1150 2050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A3BBD
P 1150 2600
F 0 "J?" H 1068 2275 50  0000 C CNN
F 1 "Conn_01x03" H 1068 2366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 2600 50  0001 C CNN
F 3 "~" H 1150 2600 50  0001 C CNN
	1    1150 2600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A3F89
P 2250 950
F 0 "J?" H 2168 625 50  0000 C CNN
F 1 "Conn_01x03" H 2168 716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2250 950 50  0001 C CNN
F 3 "~" H 2250 950 50  0001 C CNN
	1    2250 950 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A4A24
P 2250 1500
F 0 "J?" H 2168 1175 50  0000 C CNN
F 1 "Conn_01x03" H 2168 1266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2250 1500 50  0001 C CNN
F 3 "~" H 2250 1500 50  0001 C CNN
	1    2250 1500
	-1   0    0    1   
$EndComp
Text Notes 550  600  0    50   ~ 0
Servos\n
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A3D4E
P 1150 4250
F 0 "J?" H 1068 3925 50  0000 C CNN
F 1 "Conn_01x03" H 1068 4016 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1150 4250 50  0001 C CNN
F 3 "~" H 1150 4250 50  0001 C CNN
	1    1150 4250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609A3F8F
P 1150 4850
F 0 "J?" H 1068 4525 50  0000 C CNN
F 1 "Conn_01x03" H 1068 4616 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1150 4850 50  0001 C CNN
F 3 "~" H 1150 4850 50  0001 C CNN
	1    1150 4850
	-1   0    0    1   
$EndComp
Text Notes 600  3850 0    50   ~ 0
Motor - PWM
$Comp
L power:GNDREF #PWR?
U 1 1 609A582E
P 1450 850
F 0 "#PWR?" H 1450 600 50  0001 C CNN
F 1 "GNDREF" V 1455 722 50  0001 R CNN
F 2 "" H 1450 850 50  0001 C CNN
F 3 "" H 1450 850 50  0001 C CNN
	1    1450 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609A5E0A
P 1450 950
F 0 "#PWR?" H 1450 800 50  0001 C CNN
F 1 "+5V" V 1465 1078 50  0000 L CNN
F 2 "" H 1450 950 50  0001 C CNN
F 3 "" H 1450 950 50  0001 C CNN
	1    1450 950 
	0    1    1    0   
$EndComp
Text GLabel 1450 1050 2    50   Input ~ 0
PWMservo_1
Wire Notes Line
	500  3750 2050 3750
Wire Wire Line
	1450 850  1350 850 
Wire Wire Line
	1350 950  1450 950 
Wire Wire Line
	1350 1050 1450 1050
$Comp
L power:GNDREF #PWR?
U 1 1 609AB75B
P 1450 1400
F 0 "#PWR?" H 1450 1150 50  0001 C CNN
F 1 "GNDREF" V 1455 1272 50  0001 R CNN
F 2 "" H 1450 1400 50  0001 C CNN
F 3 "" H 1450 1400 50  0001 C CNN
	1    1450 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609AB761
P 1450 1500
F 0 "#PWR?" H 1450 1350 50  0001 C CNN
F 1 "+5V" V 1465 1628 50  0000 L CNN
F 2 "" H 1450 1500 50  0001 C CNN
F 3 "" H 1450 1500 50  0001 C CNN
	1    1450 1500
	0    1    1    0   
$EndComp
Text GLabel 1450 1600 2    50   Input ~ 0
PWMservo_2
Wire Wire Line
	1450 1400 1350 1400
Wire Wire Line
	1350 1500 1450 1500
Wire Wire Line
	1350 1600 1450 1600
$Comp
L power:GNDREF #PWR?
U 1 1 609ABF64
P 1450 1950
F 0 "#PWR?" H 1450 1700 50  0001 C CNN
F 1 "GNDREF" V 1455 1822 50  0001 R CNN
F 2 "" H 1450 1950 50  0001 C CNN
F 3 "" H 1450 1950 50  0001 C CNN
	1    1450 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609ABF6A
P 1450 2050
F 0 "#PWR?" H 1450 1900 50  0001 C CNN
F 1 "+5V" V 1465 2178 50  0000 L CNN
F 2 "" H 1450 2050 50  0001 C CNN
F 3 "" H 1450 2050 50  0001 C CNN
	1    1450 2050
	0    1    1    0   
$EndComp
Text GLabel 1450 2150 2    50   Input ~ 0
PWMservo_3
Wire Wire Line
	1450 1950 1350 1950
Wire Wire Line
	1350 2050 1450 2050
Wire Wire Line
	1350 2150 1450 2150
$Comp
L power:GNDREF #PWR?
U 1 1 609AC730
P 1450 2500
F 0 "#PWR?" H 1450 2250 50  0001 C CNN
F 1 "GNDREF" V 1455 2372 50  0001 R CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "" H 1450 2500 50  0001 C CNN
	1    1450 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609AC736
P 1450 2600
F 0 "#PWR?" H 1450 2450 50  0001 C CNN
F 1 "+5V" V 1465 2728 50  0000 L CNN
F 2 "" H 1450 2600 50  0001 C CNN
F 3 "" H 1450 2600 50  0001 C CNN
	1    1450 2600
	0    1    1    0   
$EndComp
Text GLabel 1450 2700 2    50   Input ~ 0
PWMservo_4
Wire Wire Line
	1450 2500 1350 2500
Wire Wire Line
	1350 2600 1450 2600
Wire Wire Line
	1350 2700 1450 2700
$Comp
L power:GNDREF #PWR?
U 1 1 609AD084
P 2550 850
F 0 "#PWR?" H 2550 600 50  0001 C CNN
F 1 "GNDREF" V 2555 722 50  0001 R CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609AD08A
P 2550 950
F 0 "#PWR?" H 2550 800 50  0001 C CNN
F 1 "+5V" V 2565 1078 50  0000 L CNN
F 2 "" H 2550 950 50  0001 C CNN
F 3 "" H 2550 950 50  0001 C CNN
	1    2550 950 
	0    1    1    0   
$EndComp
Text GLabel 2550 1050 2    50   Input ~ 0
PWMservo_5
Wire Wire Line
	2550 850  2450 850 
Wire Wire Line
	2450 950  2550 950 
Wire Wire Line
	2450 1050 2550 1050
$Comp
L power:GNDREF #PWR?
U 1 1 609AD89B
P 2550 1400
F 0 "#PWR?" H 2550 1150 50  0001 C CNN
F 1 "GNDREF" V 2555 1272 50  0001 R CNN
F 2 "" H 2550 1400 50  0001 C CNN
F 3 "" H 2550 1400 50  0001 C CNN
	1    2550 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609AD8A1
P 2550 1500
F 0 "#PWR?" H 2550 1350 50  0001 C CNN
F 1 "+5V" V 2565 1628 50  0000 L CNN
F 2 "" H 2550 1500 50  0001 C CNN
F 3 "" H 2550 1500 50  0001 C CNN
	1    2550 1500
	0    1    1    0   
$EndComp
Text GLabel 2550 1600 2    50   Input ~ 0
PWMservo_6
Wire Wire Line
	2550 1400 2450 1400
Wire Wire Line
	2450 1500 2550 1500
Wire Wire Line
	2450 1600 2550 1600
Text GLabel 1500 4250 2    50   Input ~ 0
PWM_Left
Text GLabel 1500 4850 2    50   Input ~ 0
PWM_Right
Wire Wire Line
	1500 4250 1350 4250
Wire Wire Line
	1500 4850 1350 4850
Wire Notes Line
	2050 5050 500  5050
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609FD231
P 1150 5450
F 0 "J?" H 1068 5125 50  0000 C CNN
F 1 "Conn_01x03" H 1068 5216 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1150 5450 50  0001 C CNN
F 3 "~" H 1150 5450 50  0001 C CNN
	1    1150 5450
	-1   0    0    1   
$EndComp
Text GLabel 1500 5450 2    50   Input ~ 0
Neopixels_1
Wire Wire Line
	1500 5450 1350 5450
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 609FE2C3
P 1150 6000
F 0 "J?" H 1068 5675 50  0000 C CNN
F 1 "Conn_01x03" H 1068 5766 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 1150 6000 50  0001 C CNN
F 3 "~" H 1150 6000 50  0001 C CNN
	1    1150 6000
	-1   0    0    1   
$EndComp
Text GLabel 1500 6000 2    50   Input ~ 0
Neopixels_2
Wire Wire Line
	1500 6000 1350 6000
$Comp
L power:+5V #PWR?
U 1 1 609FEBF1
P 1700 5850
F 0 "#PWR?" H 1700 5700 50  0001 C CNN
F 1 "+5V" H 1715 6023 50  0000 C CNN
F 2 "" H 1700 5850 50  0001 C CNN
F 3 "" H 1700 5850 50  0001 C CNN
	1    1700 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 609FF226
P 1700 5300
F 0 "#PWR?" H 1700 5150 50  0001 C CNN
F 1 "+5V" H 1715 5473 50  0000 C CNN
F 2 "" H 1700 5300 50  0001 C CNN
F 3 "" H 1700 5300 50  0001 C CNN
	1    1700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5300 1700 5350
Wire Wire Line
	1700 5350 1350 5350
Wire Wire Line
	1700 5850 1700 5900
Wire Wire Line
	1700 5900 1350 5900
$Comp
L power:GNDREF #PWR?
U 1 1 609FFF26
P 1450 5600
F 0 "#PWR?" H 1450 5350 50  0001 C CNN
F 1 "GNDREF" H 1455 5427 50  0001 C CNN
F 2 "" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 60A00ECF
P 1500 6150
F 0 "#PWR?" H 1500 5900 50  0001 C CNN
F 1 "GNDREF" H 1505 5977 50  0001 C CNN
F 2 "" H 1500 6150 50  0001 C CNN
F 3 "" H 1500 6150 50  0001 C CNN
	1    1500 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6100 1500 6100
Wire Wire Line
	1500 6100 1500 6150
Wire Wire Line
	1350 5550 1450 5550
Wire Wire Line
	1450 5550 1450 5600
Wire Notes Line
	2050 6300 500  6300
Wire Notes Line
	2050 1850 3200 1850
Wire Notes Line
	3200 1850 3200 500 
Wire Notes Line
	2050 1850 2050 6300
$Comp
L RPHat_V2-rescue:Teensy4.0-teensy U?
U 1 1 60B9F99F
P 5500 2250
AR Path="/60B9F99F" Ref="U?"  Part="1" 
AR Path="/609A082B/60B9F99F" Ref="U?"  Part="1" 
F 0 "U?" H 5500 3865 50  0000 C CNN
F 1 "Teensy4.0" H 5500 3774 50  0000 C CNN
F 2 "" H 5100 2450 50  0001 C CNN
F 3 "" H 5100 2450 50  0001 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 60B9F9A5
P 6900 3200
AR Path="/60B9F9A5" Ref="SW?"  Part="1" 
AR Path="/609A082B/60B9F9A5" Ref="SW?"  Part="1" 
F 0 "SW?" H 6900 3485 50  0000 C CNN
F 1 "SW_DPDT_x2" H 6900 3394 50  0000 C CNN
F 2 "" H 6900 3200 50  0001 C CNN
F 3 "~" H 6900 3200 50  0001 C CNN
	1    6900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B9F9AB
P 7250 3000
AR Path="/60B9F9AB" Ref="#PWR?"  Part="1" 
AR Path="/609A082B/60B9F9AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7250 2850 50  0001 C CNN
F 1 "+5V" H 7265 3173 50  0000 C CNN
F 2 "" H 7250 3000 50  0001 C CNN
F 3 "" H 7250 3000 50  0001 C CNN
	1    7250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3100 7250 3100
Wire Wire Line
	7250 3100 7250 3000
Wire Wire Line
	6700 3200 6600 3200
$Comp
L Device:LED D?
U 1 1 60B9F9B4
P 6850 3500
AR Path="/60B9F9B4" Ref="D?"  Part="1" 
AR Path="/609A082B/60B9F9B4" Ref="D?"  Part="1" 
F 0 "D?" V 6889 3382 50  0000 R CNN
F 1 "LED" V 6798 3382 50  0000 R CNN
F 2 "" H 6850 3500 50  0001 C CNN
F 3 "~" H 6850 3500 50  0001 C CNN
	1    6850 3500
	-1   0    0    1   
$EndComp
Connection ~ 6700 3200
$Comp
L Device:R R?
U 1 1 60B9F9BB
P 7050 3700
AR Path="/60B9F9BB" Ref="R?"  Part="1" 
AR Path="/609A082B/60B9F9BB" Ref="R?"  Part="1" 
F 0 "R?" H 7120 3746 50  0000 L CNN
F 1 "4.7k" H 7120 3655 50  0000 L CNN
F 2 "" V 6980 3700 50  0001 C CNN
F 3 "~" H 7050 3700 50  0001 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3500 7050 3550
$Comp
L power:GNDREF #PWR?
U 1 1 60B9F9C2
P 7050 3900
AR Path="/60B9F9C2" Ref="#PWR?"  Part="1" 
AR Path="/609A082B/60B9F9C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3650 50  0001 C CNN
F 1 "GNDREF" H 7055 3727 50  0001 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3850 7050 3900
Wire Wire Line
	6700 3500 6700 3200
Wire Wire Line
	7000 3500 7050 3500
Text GLabel 4250 1000 0    50   Input ~ 0
Teensy_Uart_RX
Text GLabel 4250 1100 0    50   Input ~ 0
Teensy_Uart_TX
Wire Wire Line
	4400 1000 4250 1000
Wire Wire Line
	4400 1100 4250 1100
Text GLabel 4200 1200 0    50   Input ~ 0
PWM_Right
Text GLabel 4200 1300 0    50   Input ~ 0
PWM_Left
Wire Wire Line
	4200 1300 4400 1300
Wire Wire Line
	4200 1200 4400 1200
Text GLabel 4200 1400 0    50   Input ~ 0
PWMservo_1
Text GLabel 6750 2400 2    50   Input ~ 0
Neopixels_1
Text GLabel 4200 1500 0    50   Input ~ 0
PWMservo_2
Text GLabel 4200 1600 0    50   Input ~ 0
PWMservo_3
Text GLabel 4200 1700 0    50   Input ~ 0
PWMservo_4
Text GLabel 4200 1800 0    50   Input ~ 0
PWMservo_5
Text GLabel 4200 1900 0    50   Input ~ 0
PWMservo_6
Text GLabel 6750 2300 2    50   Input ~ 0
Neopixels_2
$Comp
L power:GNDREF #PWR?
U 1 1 60B9F9DB
P 4300 900
AR Path="/60B9F9DB" Ref="#PWR?"  Part="1" 
AR Path="/609A082B/60B9F9DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 650 50  0001 C CNN
F 1 "GNDREF" H 4305 727 50  0001 C CNN
F 2 "" H 4300 900 50  0001 C CNN
F 3 "" H 4300 900 50  0001 C CNN
	1    4300 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 900  4300 900 
Wire Wire Line
	4200 1400 4400 1400
Wire Wire Line
	4200 1500 4400 1500
Wire Wire Line
	4200 1600 4400 1600
Wire Wire Line
	4200 1700 4400 1700
Wire Wire Line
	4200 1800 4400 1800
Wire Wire Line
	4200 1900 4400 1900
Wire Wire Line
	6750 2300 6600 2300
Wire Wire Line
	6750 2400 6600 2400
$EndSCHEMATC
