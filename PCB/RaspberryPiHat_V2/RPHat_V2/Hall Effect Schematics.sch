EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Sensor_Magnetic:AH1806-P U?
U 1 1 6098D710
P 1800 1400
F 0 "U?" H 1570 1446 50  0000 R CNN
F 1 "AH1806-P" H 1570 1355 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1800 1400 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AH1806.pdf" H 1800 1400 50  0001 C CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 6098DD81
P 1800 2000
F 0 "#PWR?" H 1800 1750 50  0001 C CNN
F 1 "GNDREF" H 1805 1827 50  0000 C CNN
F 2 "" H 1800 2000 50  0001 C CNN
F 3 "" H 1800 2000 50  0001 C CNN
	1    1800 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6098E018
P 1800 850
F 0 "#PWR?" H 1800 700 50  0001 C CNN
F 1 "+3.3V" H 1815 1023 50  0000 C CNN
F 2 "" H 1800 850 50  0001 C CNN
F 3 "" H 1800 850 50  0001 C CNN
	1    1800 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6098E664
P 1050 1450
F 0 "C?" H 935 1404 50  0000 R CNN
F 1 "100nF" H 935 1495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1088 1300 50  0001 C CNN
F 3 "~" H 1050 1450 50  0001 C CNN
	1    1050 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 6098F759
P 2250 1150
F 0 "R?" H 2320 1196 50  0000 L CNN
F 1 "100k" H 2320 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2180 1150 50  0001 C CNN
F 3 "~" H 2250 1150 50  0001 C CNN
	1    2250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 850  1800 950 
Wire Wire Line
	1050 1300 1050 950 
Wire Wire Line
	1050 950  1800 950 
Connection ~ 1800 950 
Wire Wire Line
	1800 950  1800 1000
Wire Wire Line
	1800 2000 1800 1900
Wire Wire Line
	1050 1600 1050 1900
Wire Wire Line
	1050 1900 1800 1900
Connection ~ 1800 1900
Wire Wire Line
	1800 1900 1800 1800
Wire Wire Line
	2250 1000 1800 1000
Connection ~ 1800 1000
Text GLabel 2300 1400 2    50   Input ~ 0
OUTPUT
Wire Wire Line
	2100 1400 2250 1400
Wire Wire Line
	2250 1300 2250 1400
Connection ~ 2250 1400
Wire Wire Line
	2250 1400 2300 1400
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 60990D01
P 3200 1750
F 0 "J?" H 3280 1792 50  0000 L CNN
F 1 "Conn_01x03" H 3280 1701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3200 1750 50  0001 C CNN
F 3 "~" H 3200 1750 50  0001 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
Text GLabel 2850 1650 0    50   Input ~ 0
OUTPUT
$Comp
L power:GNDREF #PWR?
U 1 1 60991611
P 2850 1750
F 0 "#PWR?" H 2850 1500 50  0001 C CNN
F 1 "GNDREF" V 2855 1622 50  0000 R CNN
F 2 "" H 2850 1750 50  0001 C CNN
F 3 "" H 2850 1750 50  0001 C CNN
	1    2850 1750
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60991D41
P 2850 1850
F 0 "#PWR?" H 2850 1700 50  0001 C CNN
F 1 "+3.3V" V 2865 1978 50  0000 L CNN
F 2 "" H 2850 1850 50  0001 C CNN
F 3 "" H 2850 1850 50  0001 C CNN
	1    2850 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 1650 3000 1650
Wire Wire Line
	2850 1750 3000 1750
Wire Wire Line
	2850 1850 3000 1850
$EndSCHEMATC
