EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "Rover PCB schematic"
Date "2021-05-15"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RPHat_V2-rescue:RPMB5.0-3.0-RPMB5.0-3.0 PS1
U 1 1 608338A4
P 2200 1250
F 0 "PS1" H 2850 1515 50  0000 C CNN
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
L Connector:Raspberry_Pi_2_3 J1
U 1 1 608367C5
P 2850 5950
F 0 "J1" H 2165 7431 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2165 7340 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2850 5950 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60855818
P 1400 1400
F 0 "C3" H 1515 1446 50  0000 L CNN
F 1 "10uF" H 1515 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 1438 1250 50  0001 C CNN
F 3 "~" H 1400 1400 50  0001 C CNN
	1    1400 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60856C0C
P 1100 1400
F 0 "C2" H 1215 1446 50  0000 L CNN
F 1 "10uF" H 1215 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 1138 1250 50  0001 C CNN
F 3 "~" H 1100 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6085B575
P 800 1400
F 0 "C1" H 915 1446 50  0000 L CNN
F 1 "10uF" H 915 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 838 1250 50  0001 C CNN
F 3 "~" H 800 1400 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 6085D5E0
P 800 1650
F 0 "#PWR0101" H 800 1400 50  0001 C CNN
F 1 "GNDREF" H 805 1477 50  0001 C CNN
F 2 "" H 800 1650 50  0001 C CNN
F 3 "" H 800 1650 50  0001 C CNN
	1    800  1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 6085DEB3
P 1100 1650
F 0 "#PWR0102" H 1100 1400 50  0001 C CNN
F 1 "GNDREF" H 1105 1477 50  0001 C CNN
F 2 "" H 1100 1650 50  0001 C CNN
F 3 "" H 1100 1650 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 6085E1F0
P 1400 1650
F 0 "#PWR0103" H 1400 1400 50  0001 C CNN
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
L pspice:INDUCTOR L1
U 1 1 6085F0A3
P 1700 1250
F 0 "L1" H 1700 1465 50  0000 C CNN
F 1 "2.2uH" H 1700 1374 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric_Pad1.43x2.20mm_HandSolder" H 1700 1250 50  0001 C CNN
F 3 "~" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60862A5D
P 2000 1400
F 0 "C4" H 2115 1446 50  0000 L CNN
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
L power:GNDREF #PWR0104
U 1 1 60862A63
P 1800 1600
F 0 "#PWR0104" H 1800 1350 50  0001 C CNN
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
L power:+5V #PWR0105
U 1 1 6086D5CD
P 2150 1650
F 0 "#PWR0105" H 2150 1500 50  0001 C CNN
F 1 "+5V" V 2165 1778 50  0000 L CNN
F 2 "" H 2150 1650 50  0001 C CNN
F 3 "" H 2150 1650 50  0001 C CNN
	1    2150 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 1650 2150 1650
$Comp
L power:+5V #PWR0106
U 1 1 608702EB
P 2150 2150
F 0 "#PWR0106" H 2150 2000 50  0001 C CNN
F 1 "+5V" V 2165 2278 50  0000 L CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 2150 2150 2150
$Comp
L power:GNDREF #PWR0107
U 1 1 60871C04
P 1800 2100
F 0 "#PWR0107" H 1800 1850 50  0001 C CNN
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
L power:GNDREF #PWR0108
U 1 1 60875D28
P 2000 2500
F 0 "#PWR0108" H 2000 2250 50  0001 C CNN
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
L power:GNDREF #PWR0109
U 1 1 6087C04F
P 3850 2450
F 0 "#PWR0109" H 3850 2200 50  0001 C CNN
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
L Device:R R2
U 1 1 60883081
P 4100 1650
F 0 "R2" H 4170 1696 50  0000 L CNN
F 1 "1k" H 4170 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4030 1650 50  0001 C CNN
F 3 "~" H 4100 1650 50  0001 C CNN
	1    4100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1450 4100 1450
Wire Wire Line
	4100 1450 4100 1500
$Comp
L Device:LED D1
U 1 1 60884984
P 4100 2000
F 0 "D1" V 4139 1882 50  0000 R CNN
F 1 "LED" V 4048 1882 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 4100 2000 50  0001 C CNN
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
L power:+5V #PWR0110
U 1 1 608B20C1
P 4300 1300
F 0 "#PWR0110" H 4300 1150 50  0001 C CNN
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
L Device:C C5
U 1 1 608A9FCA
P 4300 1500
F 0 "C5" H 4415 1546 50  0000 L CNN
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
GPS_Uart_RX
Text GLabel 1800 5150 0    50   Input ~ 0
GPS_Uart_TX
Wire Wire Line
	1800 5050 2050 5050
Wire Wire Line
	2050 5150 1800 5150
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
$Comp
L Device:Battery BT1
U 1 1 60A0D572
P 800 2500
F 0 "BT1" H 908 2546 50  0000 L CNN
F 1 "Battery" H 908 2455 50  0000 L CNN
F 2 "Connector_PinSocket_2.00mm:PinSocket_1x02_P2.00mm_Vertical" V 800 2560 50  0001 C CNN
F 3 "~" V 800 2560 50  0001 C CNN
	1    800  2500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0111
U 1 1 60A138F9
P 800 2150
F 0 "#PWR0111" H 800 2000 50  0001 C CNN
F 1 "+BATT" H 815 2323 50  0000 C CNN
F 2 "" H 800 2150 50  0001 C CNN
F 3 "" H 800 2150 50  0001 C CNN
	1    800  2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2300 800  2150
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
	800  2700 800  2950
$Comp
L power:VCC #PWR?
U 1 1 60A65488
P 800 1050
AR Path="/6092276E/60A65488" Ref="#PWR?"  Part="1" 
AR Path="/60A65488" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 800 900 50  0001 C CNN
F 1 "VCC" H 815 1223 50  0000 C CNN
F 2 "" H 800 1050 50  0001 C CNN
F 3 "" H 800 1050 50  0001 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0113
U 1 1 60A67F58
P 800 2950
F 0 "#PWR0113" H 800 2700 50  0001 C CNN
F 1 "GNDREF" H 805 2777 50  0001 C CNN
F 2 "" H 800 2950 50  0001 C CNN
F 3 "" H 800 2950 50  0001 C CNN
	1    800  2950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 60A6AEA9
P 2650 4500
F 0 "#PWR0114" H 2650 4350 50  0001 C CNN
F 1 "+5V" V 2665 4628 50  0000 L CNN
F 2 "" H 2650 4500 50  0001 C CNN
F 3 "" H 2650 4500 50  0001 C CNN
	1    2650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 60A6C4F6
P 2950 4500
F 0 "#PWR0115" H 2950 4350 50  0001 C CNN
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
L power:GNDREF #PWR0116
U 1 1 60A746A9
P 2450 7400
F 0 "#PWR0116" H 2450 7150 50  0001 C CNN
F 1 "GNDREF" H 2455 7227 50  0001 C CNN
F 2 "" H 2450 7400 50  0001 C CNN
F 3 "" H 2450 7400 50  0001 C CNN
	1    2450 7400
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
AR Path="/60A92742" Ref="R1"  Part="1" 
F 0 "R1" H 4070 5146 50  0000 L CNN
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
AR Path="/60A95088" Ref="R3"  Part="1" 
F 0 "R3" H 4370 5146 50  0000 L CNN
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
Text Notes 3250 4450 0    50   ~ 0
Pullups need to be calculated based \non slva689 application note from \ntexas instruments\n
Wire Wire Line
	1800 1550 2000 1550
$Comp
L power:+3V3 #PWR0117
U 1 1 60A5C7F9
P 4150 4850
F 0 "#PWR0117" H 4150 4700 50  0001 C CNN
F 1 "+3V3" H 4165 5023 50  0000 C CNN
F 2 "" H 4150 4850 50  0001 C CNN
F 3 "" H 4150 4850 50  0001 C CNN
	1    4150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4950 4000 4900
Wire Wire Line
	4000 4900 4150 4900
Wire Wire Line
	4150 4900 4150 4850
Wire Wire Line
	4300 4950 4300 4900
Wire Wire Line
	4300 4900 4150 4900
Connection ~ 4150 4900
Connection ~ 2450 7400
Wire Wire Line
	2750 7400 2850 7400
$EndSCHEMATC
