EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "QYT KT8900D Interface Board"
Date "2021-02-21"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7550 1350 1    50   Output ~ 0
AF_out
Text GLabel 7650 1350 1    50   Output ~ 0
8V_out
Text GLabel 7750 1350 1    50   BiDi ~ 0
GND
Text GLabel 7850 1350 1    50   Input ~ 0
PTT
Text GLabel 7950 1350 1    50   BiDi ~ 0
Mic_GND
Text GLabel 8150 1350 1    50   Output ~ 0
RPT_CTRL
Text GLabel 8250 1350 1    50   Input ~ 0
Data_in
Text GLabel 5900 1300 1    50   Input ~ 0
AF_HM
Text GLabel 6000 1300 1    50   Input ~ 0
8V_HM
Text GLabel 6100 1300 1    50   Input ~ 0
GND_HM
Text GLabel 6200 1300 1    50   Input ~ 0
PTT_HM
Text GLabel 6300 1300 1    50   Input ~ 0
Mic_GND_HM
Text GLabel 6500 1300 1    50   Input ~ 0
RPT_CTRL_out
Text GLabel 6600 1300 1    50   Input ~ 0
Data_out
Text GLabel 4800 5300 0    50   Output ~ 0
Back_Mic
Text GLabel 4800 5700 0    50   Output ~ 0
Back_PTT_Alt
Text GLabel 4800 5600 0    50   Input ~ 0
Back_PTT
Text GLabel 4800 5400 0    50   Input ~ 0
Back_Speaker
Text GLabel 4800 5500 0    50   Output ~ 0
Back_Sp_Alt
Text Notes 10150 1850 2    50   ~ 0
To Radio
Text Notes 4750 1300 2    50   ~ 0
From Hand Mic
$Comp
L Connector:TestPoint TP26
U 1 1 6029D7AD
P 5500 5050
F 0 "TP26" V 5500 5300 50  0000 C CNN
F 1 "TestPoint" V 5500 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5700 5050 50  0001 C CNN
F 3 "~" H 5700 5050 50  0001 C CNN
	1    5500 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 6029D7B7
P 5400 5050
F 0 "TP25" V 5400 5300 50  0000 C CNN
F 1 "TestPoint" V 5400 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5600 5050 50  0001 C CNN
F 3 "~" H 5600 5050 50  0001 C CNN
	1    5400 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 6029D7C1
P 5300 5050
F 0 "TP24" V 5300 5300 50  0000 C CNN
F 1 "TestPoint" V 5300 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5500 5050 50  0001 C CNN
F 3 "~" H 5500 5050 50  0001 C CNN
	1    5300 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP23
U 1 1 6029D7CB
P 5200 5050
F 0 "TP23" V 5200 5300 50  0000 C CNN
F 1 "TestPoint" V 5200 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5400 5050 50  0001 C CNN
F 3 "~" H 5400 5050 50  0001 C CNN
	1    5200 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP22
U 1 1 6029D7D5
P 5100 5050
F 0 "TP22" V 5100 5300 50  0000 C CNN
F 1 "TestPoint" V 5100 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5300 5050 50  0001 C CNN
F 3 "~" H 5300 5050 50  0001 C CNN
	1    5100 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 6029D7DF
P 5000 5050
F 0 "TP21" V 5000 5300 50  0000 C CNN
F 1 "TestPoint" V 5000 5550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 5200 5050 50  0001 C CNN
F 3 "~" H 5200 5050 50  0001 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5200 5000 5200
Wire Wire Line
	4800 5300 5100 5300
Wire Wire Line
	5700 5400 5200 5400
Wire Wire Line
	5700 5500 5300 5500
Wire Wire Line
	4800 5600 5400 5600
Wire Wire Line
	5700 5700 5500 5700
$Comp
L Device:Jumper_NC_Small JP9
U 1 1 602B7A5B
P 5800 5200
F 0 "JP9" H 5950 5250 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4450 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5200 50  0001 C CNN
F 3 "~" H 5800 5200 50  0001 C CNN
	1    5800 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP10
U 1 1 602B9626
P 5800 5300
F 0 "JP10" H 5950 5350 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5300 50  0001 C CNN
F 3 "~" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP11
U 1 1 602B97F3
P 5800 5400
F 0 "JP11" H 5950 5450 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4650 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5400 50  0001 C CNN
F 3 "~" H 5800 5400 50  0001 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP12
U 1 1 602B99E0
P 5800 5500
F 0 "JP12" H 5950 5550 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4750 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5500 50  0001 C CNN
F 3 "~" H 5800 5500 50  0001 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP13
U 1 1 602BA3CA
P 5800 5600
F 0 "JP13" H 5950 5650 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5600 50  0001 C CNN
F 3 "~" H 5800 5600 50  0001 C CNN
	1    5800 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP14
U 1 1 602BA610
P 5800 5700
F 0 "JP14" H 5950 5750 50  0000 C CNN
F 1 "Jumper_NC_Small" H 5800 4950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 5800 5700 50  0001 C CNN
F 3 "~" H 5800 5700 50  0001 C CNN
	1    5800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5050 5000 5200
Connection ~ 5000 5200
Wire Wire Line
	5000 5200 5700 5200
Wire Wire Line
	5100 5050 5100 5300
Connection ~ 5100 5300
Wire Wire Line
	5100 5300 5700 5300
Wire Wire Line
	5200 5050 5200 5400
Connection ~ 5200 5400
Wire Wire Line
	5200 5400 4800 5400
Wire Wire Line
	5300 5050 5300 5500
Connection ~ 5300 5500
Wire Wire Line
	5300 5500 4800 5500
Wire Wire Line
	5400 5050 5400 5600
Connection ~ 5400 5600
Wire Wire Line
	5400 5600 5700 5600
Wire Wire Line
	5500 5050 5500 5700
Connection ~ 5500 5700
Wire Wire Line
	5500 5700 4800 5700
Text GLabel 6300 5500 2    50   Input ~ 0
AF_out
Text GLabel 6300 5200 2    50   BiDi ~ 0
GND
Text GLabel 4800 5200 0    50   BiDi ~ 0
Back_GND
Text GLabel 6300 5400 2    50   Output ~ 0
SP
Text GLabel 6300 5700 2    50   Input ~ 0
PTT
NoConn ~ 6300 5600
Wire Wire Line
	5900 5200 6300 5200
Wire Wire Line
	6300 5300 5900 5300
Wire Wire Line
	5900 5400 6300 5400
Wire Wire Line
	6300 5500 5900 5500
Wire Wire Line
	6300 5600 5900 5600
Wire Wire Line
	6300 5700 5900 5700
Text GLabel 6300 5300 2    50   Input ~ 0
Mic_Out_Back
Text GLabel 8050 1350 1    50   Input ~ 0
Front_Mic
Text GLabel 6400 1300 1    50   Input ~ 0
Hand_Mic
$Comp
L Device:R R2
U 1 1 6033ACCA
P 5450 3400
F 0 "R2" H 5520 3446 50  0000 L CNN
F 1 "440" H 5520 3355 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5380 3400 50  0001 C CNN
F 3 "~" H 5450 3400 50  0001 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6033C591
P 5350 3400
F 0 "R1" H 5281 3354 50  0000 R CNN
F 1 "440" H 5281 3445 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5280 3400 50  0001 C CNN
F 3 "~" H 5350 3400 50  0001 C CNN
	1    5350 3400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6033D106
P 5400 3650
F 0 "#PWR0101" H 5400 3400 50  0001 C CNN
F 1 "GND" H 5405 3477 50  0000 C CNN
F 2 "" H 5400 3650 50  0001 C CNN
F 3 "" H 5400 3650 50  0001 C CNN
	1    5400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6033D44C
P 4500 7250
F 0 "#PWR0102" H 4500 7000 50  0001 C CNN
F 1 "GND" H 4505 7077 50  0000 C CNN
F 2 "" H 4500 7250 50  0001 C CNN
F 3 "" H 4500 7250 50  0001 C CNN
	1    4500 7250
	1    0    0    -1  
$EndComp
Text GLabel 4400 7150 0    50   BiDi ~ 0
GND
Wire Wire Line
	4400 7150 4500 7150
Wire Wire Line
	4500 7150 4500 7250
Wire Wire Line
	5350 3550 5350 3600
Wire Wire Line
	5350 3600 5400 3600
Wire Wire Line
	5400 3600 5400 3650
Wire Wire Line
	5450 3550 5450 3600
Wire Wire Line
	5450 3600 5400 3600
Connection ~ 5400 3600
$Comp
L Connector:TestPoint TP3
U 1 1 601FB63B
P 5900 2800
F 0 "TP3" V 5900 3050 50  0000 C CNN
F 1 "TestPoint" V 5900 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6100 2800 50  0001 C CNN
F 3 "~" H 6100 2800 50  0001 C CNN
	1    5900 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 601FE25C
P 6600 2800
F 0 "TP10" V 6600 3050 50  0000 C CNN
F 1 "TestPoint" V 6600 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6800 2800 50  0001 C CNN
F 3 "~" H 6800 2800 50  0001 C CNN
	1    6600 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 601FE252
P 6500 2800
F 0 "TP9" V 6500 3050 50  0000 C CNN
F 1 "TestPoint" V 6500 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6700 2800 50  0001 C CNN
F 3 "~" H 6700 2800 50  0001 C CNN
	1    6500 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 601FE248
P 6400 2800
F 0 "TP8" V 6400 3050 50  0000 C CNN
F 1 "TestPoint" V 6400 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6600 2800 50  0001 C CNN
F 3 "~" H 6600 2800 50  0001 C CNN
	1    6400 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 601FE178
P 6300 2800
F 0 "TP7" V 6300 3050 50  0000 C CNN
F 1 "TestPoint" V 6300 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6500 2800 50  0001 C CNN
F 3 "~" H 6500 2800 50  0001 C CNN
	1    6300 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 601FD0CC
P 6200 2800
F 0 "TP6" V 6200 3050 50  0000 C CNN
F 1 "TestPoint" V 6200 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6400 2800 50  0001 C CNN
F 3 "~" H 6400 2800 50  0001 C CNN
	1    6200 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 601FD02C
P 6100 2800
F 0 "TP5" V 6100 3050 50  0000 C CNN
F 1 "TestPoint" V 6100 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6100 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 601FB950
P 6000 2800
F 0 "TP4" V 6000 3050 50  0000 C CNN
F 1 "TestPoint" V 6000 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 6200 2800 50  0001 C CNN
F 3 "~" H 6200 2800 50  0001 C CNN
	1    6000 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:Jumper_NC_Small JP2
U 1 1 60383420
P 7050 1800
F 0 "JP2" H 7200 1850 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 1800 50  0001 C CNN
F 3 "~" H 7050 1800 50  0001 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP3
U 1 1 60383426
P 7050 1900
F 0 "JP3" H 7200 1950 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1050 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 1900 50  0001 C CNN
F 3 "~" H 7050 1900 50  0001 C CNN
	1    7050 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP4
U 1 1 6038342C
P 7050 2000
F 0 "JP4" H 7200 2050 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1150 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 2000 50  0001 C CNN
F 3 "~" H 7050 2000 50  0001 C CNN
	1    7050 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP5
U 1 1 60383432
P 7050 2100
F 0 "JP5" H 7200 2150 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1250 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 2100 50  0001 C CNN
F 3 "~" H 7050 2100 50  0001 C CNN
	1    7050 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP6
U 1 1 60383438
P 7050 2200
F 0 "JP6" H 7200 2250 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1350 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 2200 50  0001 C CNN
F 3 "~" H 7050 2200 50  0001 C CNN
	1    7050 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Small JP7
U 1 1 6038343E
P 7050 2300
F 0 "JP7" H 7200 2350 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1450 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 2300 50  0001 C CNN
F 3 "~" H 7050 2300 50  0001 C CNN
	1    7050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1700 8250 1700
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 60389A9E
P 7050 1700
F 0 "JP1" H 7200 1750 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 850 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 1700 50  0001 C CNN
F 3 "~" H 7050 1700 50  0001 C CNN
	1    7050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1700 6600 1700
Wire Wire Line
	6950 1800 6500 1800
Wire Wire Line
	4850 1900 6400 1900
Wire Wire Line
	6950 2000 6300 2000
Wire Wire Line
	4850 2100 6200 2100
Wire Wire Line
	6950 2200 6100 2200
Wire Wire Line
	4850 2300 6000 2300
$Comp
L Device:Jumper_NC_Small JP8
U 1 1 60398E32
P 7050 2400
F 0 "JP8" H 7200 2450 50  0000 C CNN
F 1 "Jumper_NC_Small" H 7050 1550 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_Pad1.0x1.5mm" H 7050 2400 50  0001 C CNN
F 3 "~" H 7050 2400 50  0001 C CNN
	1    7050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1800 8150 1800
Wire Wire Line
	9150 1900 8050 1900
Wire Wire Line
	7150 2000 7950 2000
Wire Wire Line
	7150 2200 7750 2200
Wire Wire Line
	9150 2300 7650 2300
Wire Wire Line
	7150 2400 7550 2400
Wire Wire Line
	6950 2400 5900 2400
Wire Wire Line
	8250 1350 8250 1700
Connection ~ 8250 1700
Wire Wire Line
	8250 1700 7150 1700
Wire Wire Line
	6600 1300 6600 1700
Connection ~ 6600 1700
Wire Wire Line
	6600 1700 4850 1700
Wire Wire Line
	6500 1300 6500 1800
Connection ~ 6500 1800
Wire Wire Line
	6500 1800 4850 1800
Wire Wire Line
	8150 1350 8150 1800
Connection ~ 8150 1800
Wire Wire Line
	8150 1800 9150 1800
Wire Wire Line
	6600 1700 6600 2800
Wire Wire Line
	6400 1300 6400 1900
Connection ~ 6400 1900
Wire Wire Line
	6400 1900 6950 1900
Wire Wire Line
	8050 1350 8050 1900
Connection ~ 8050 1900
Wire Wire Line
	8050 1900 7150 1900
Wire Wire Line
	6300 1300 6300 2000
Connection ~ 6300 2000
Wire Wire Line
	6300 2000 4850 2000
Wire Wire Line
	6300 2000 6300 2800
Wire Wire Line
	6400 1900 6400 2800
Wire Wire Line
	6500 2800 6500 1800
Wire Wire Line
	6200 1300 6200 2100
Connection ~ 6200 2100
Wire Wire Line
	6200 2100 6950 2100
Wire Wire Line
	6200 2100 6200 2800
Wire Wire Line
	6100 1300 6100 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 4850 2200
Wire Wire Line
	6100 2200 6100 2800
Wire Wire Line
	6000 1300 6000 2300
Connection ~ 6000 2300
Wire Wire Line
	6000 2300 6950 2300
Wire Wire Line
	6000 2800 6000 2300
Wire Wire Line
	5900 1300 5900 2400
Connection ~ 5900 2400
Wire Wire Line
	5900 2400 4850 2400
Wire Wire Line
	5900 2800 5900 2400
Wire Wire Line
	7950 1350 7950 2000
Connection ~ 7950 2000
Wire Wire Line
	7950 2000 9150 2000
Wire Wire Line
	7850 1350 7850 2100
Connection ~ 7850 2100
Wire Wire Line
	7850 2100 7150 2100
Wire Wire Line
	7750 1350 7750 2200
Connection ~ 7750 2200
Wire Wire Line
	7750 2200 9150 2200
Wire Wire Line
	7650 1350 7650 2300
Connection ~ 7650 2300
Wire Wire Line
	7650 2300 7150 2300
Wire Wire Line
	7550 1350 7550 2400
Connection ~ 7550 2400
Wire Wire Line
	7550 2400 9150 2400
$Comp
L Connector:TestPoint TP11
U 1 1 603F320A
P 7550 2800
F 0 "TP11" V 7550 3050 50  0000 C CNN
F 1 "TestPoint" V 7550 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7750 2800 50  0001 C CNN
F 3 "~" H 7750 2800 50  0001 C CNN
	1    7550 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 603F3210
P 8250 2800
F 0 "TP18" V 8250 3050 50  0000 C CNN
F 1 "TestPoint" V 8250 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8450 2800 50  0001 C CNN
F 3 "~" H 8450 2800 50  0001 C CNN
	1    8250 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 603F3216
P 8150 2800
F 0 "TP17" V 8150 3050 50  0000 C CNN
F 1 "TestPoint" V 8150 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8350 2800 50  0001 C CNN
F 3 "~" H 8350 2800 50  0001 C CNN
	1    8150 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 603F321C
P 8050 2800
F 0 "TP16" V 8050 3050 50  0000 C CNN
F 1 "TestPoint" V 8050 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8250 2800 50  0001 C CNN
F 3 "~" H 8250 2800 50  0001 C CNN
	1    8050 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 603F3222
P 7950 2800
F 0 "TP15" V 7950 3050 50  0000 C CNN
F 1 "TestPoint" V 7950 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8150 2800 50  0001 C CNN
F 3 "~" H 8150 2800 50  0001 C CNN
	1    7950 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 603F3228
P 7850 2800
F 0 "TP14" V 7850 3050 50  0000 C CNN
F 1 "TestPoint" V 7850 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8050 2800 50  0001 C CNN
F 3 "~" H 8050 2800 50  0001 C CNN
	1    7850 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 603F322E
P 7750 2800
F 0 "TP13" V 7750 3050 50  0000 C CNN
F 1 "TestPoint" V 7750 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7950 2800 50  0001 C CNN
F 3 "~" H 7950 2800 50  0001 C CNN
	1    7750 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 603F3234
P 7650 2800
F 0 "TP12" V 7650 3050 50  0000 C CNN
F 1 "TestPoint" V 7650 3300 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 7850 2800 50  0001 C CNN
F 3 "~" H 7850 2800 50  0001 C CNN
	1    7650 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 1700 8250 2800
Wire Wire Line
	7950 2000 7950 2800
Wire Wire Line
	8050 1900 8050 2800
Wire Wire Line
	8150 2800 8150 1800
Wire Wire Line
	7850 2100 7850 2800
Wire Wire Line
	7750 2200 7750 2800
Wire Wire Line
	7650 2800 7650 2300
Wire Wire Line
	7550 2800 7550 2400
Wire Wire Line
	9150 2100 7850 2100
$Comp
L Device:R R4
U 1 1 60407ACA
P 8800 3450
F 0 "R4" H 8870 3496 50  0000 L CNN
F 1 "440" H 8870 3405 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8730 3450 50  0001 C CNN
F 3 "~" H 8800 3450 50  0001 C CNN
	1    8800 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60407AD0
P 8700 3450
F 0 "R3" H 8631 3404 50  0000 R CNN
F 1 "440" H 8631 3495 50  0000 R CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8630 3450 50  0001 C CNN
F 3 "~" H 8700 3450 50  0001 C CNN
	1    8700 3450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60407AD6
P 8750 3700
F 0 "#PWR0103" H 8750 3450 50  0001 C CNN
F 1 "GND" H 8755 3527 50  0000 C CNN
F 2 "" H 8750 3700 50  0001 C CNN
F 3 "" H 8750 3700 50  0001 C CNN
	1    8750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3600 8700 3650
Wire Wire Line
	8700 3650 8750 3650
Wire Wire Line
	8750 3650 8750 3700
Wire Wire Line
	8800 3600 8800 3650
Wire Wire Line
	8800 3650 8750 3650
Connection ~ 8750 3650
Text GLabel 8350 4700 1    50   Output ~ 0
8V_out
Text GLabel 8250 4700 1    50   Output ~ 0
PTT_LED
Wire Wire Line
	8250 4700 8250 4850
Wire Wire Line
	8350 4700 8350 4850
$Comp
L Connector:TestPoint TP20
U 1 1 6098FE0D
P 8350 4850
F 0 "TP20" V 8350 5100 50  0000 C CNN
F 1 "TestPoint" V 8350 5350 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8550 4850 50  0001 C CNN
F 3 "~" H 8550 4850 50  0001 C CNN
	1    8350 4850
	0    1    1    0   
$EndComp
$Comp
L 2041411-1:2041411-1 J4
U 1 1 60B5DF99
P 4450 2400
F 0 "J4" H 4343 3367 50  0000 C CNN
F 1 "From Hand Mic" H 4343 3276 50  0000 C CNN
F 2 "2041411-1:TE_2041411-1" H 4450 2400 50  0001 L BNN
F 3 "" H 4450 2400 50  0001 L BNN
F 4 "2041411-1" H 4450 2400 50  0001 L BNN "Comment"
F 5 "1.02 mm[.04 in]" H 4450 2400 50  0001 L BNN "Centerline_Pitch"
F 6 "8" H 4450 2400 50  0001 L BNN "Number_of_Positions"
	1    4450 2400
	-1   0    0    -1  
$EndComp
$Comp
L 2041411-1:2041411-1 J5
U 1 1 60B5FBBB
P 9550 2400
F 0 "J5" H 9780 2496 50  0000 L CNN
F 1 "To Radio" H 9780 2405 50  0000 L CNN
F 2 "2041411-1:TE_2041411-1" H 9550 2400 50  0001 L BNN
F 3 "" H 9550 2400 50  0001 L BNN
F 4 "2041411-1" H 9550 2400 50  0001 L BNN "Comment"
F 5 "1.02 mm[.04 in]" H 9550 2400 50  0001 L BNN "Centerline_Pitch"
F 6 "8" H 9550 2400 50  0001 L BNN "Number_of_Positions"
	1    9550 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60B8B5E4
P 9100 3050
F 0 "#PWR0104" H 9100 2800 50  0001 C CNN
F 1 "GND" H 9105 2877 50  0000 C CNN
F 2 "" H 9100 3050 50  0001 C CNN
F 3 "" H 9100 3050 50  0001 C CNN
	1    9100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3000 9100 3000
Wire Wire Line
	9100 3000 9100 3050
Wire Wire Line
	8700 2500 8700 3300
Wire Wire Line
	8700 2500 9150 2500
Wire Wire Line
	8800 3300 8800 2700
Wire Wire Line
	8800 2700 9150 2700
$Comp
L Connector:TestPoint TP19
U 1 1 6099151A
P 8250 4850
F 0 "TP19" V 8250 5100 50  0000 C CNN
F 1 "TestPoint" V 8250 5350 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 8450 4850 50  0001 C CNN
F 3 "~" H 8450 4850 50  0001 C CNN
	1    8250 4850
	0    -1   -1   0   
$EndComp
Text GLabel 9050 2600 0    50   Output ~ 0
8V_out
Text GLabel 8900 2900 3    50   Output ~ 0
PTT_LED
Wire Wire Line
	9050 2600 9150 2600
Wire Wire Line
	9150 2800 8900 2800
Wire Wire Line
	8900 2800 8900 2900
Wire Wire Line
	4850 2500 5450 2500
Wire Wire Line
	5450 2500 5450 3250
Wire Wire Line
	4850 2700 5350 2700
Wire Wire Line
	5350 2700 5350 3250
Text GLabel 4950 2800 2    50   Input ~ 0
RX_LED
Text GLabel 4950 2600 2    50   Input ~ 0
TX_LED
Wire Wire Line
	4950 2600 4850 2600
Wire Wire Line
	4850 2800 4950 2800
$Comp
L SJ2-35825D-SMT-TR:SJ2-35825D-SMT-TR J1
U 1 1 60C6B6BD
P 1550 1700
F 0 "J1" H 1607 2567 50  0000 C CNN
F 1 "AudioJack_HeadPhones" H 1607 2476 50  0000 C CNN
F 2 "SJ2-35825D-SMT-TR:CUI_SJ2-35825D-SMT-TR" H 1550 1700 50  0001 L BNN
F 3 "" H 1550 1700 50  0001 L BNN
F 4 "SJ2-35825D-SMT-TR" H 1550 1700 50  0001 L BNN "MPN"
F 5 "1.01" H 1550 1700 50  0001 L BNN "PART_REV"
F 6 "CUI" H 1550 1700 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer recommendation" H 1550 1700 50  0001 L BNN "STANDARD"
	1    1550 1700
	1    0    0    -1  
$EndComp
Text GLabel 2500 1100 2    50   Input ~ 0
GND
Text GLabel 2500 1700 2    50   Input ~ 0
SP
Text GLabel 2500 1500 2    50   Output ~ 0
Mic_In_HP
Wire Wire Line
	2150 1100 2500 1100
Wire Wire Line
	2150 1500 2500 1500
Wire Wire Line
	2150 1700 2350 1700
Wire Wire Line
	2150 2300 2350 2300
Wire Wire Line
	2350 2300 2350 1700
Connection ~ 2350 1700
Wire Wire Line
	2350 1700 2500 1700
NoConn ~ 2150 1900
NoConn ~ 2150 2100
NoConn ~ 2150 1300
$Comp
L SJ2-35825D-SMT-TR:SJ2-35825D-SMT-TR J2
U 1 1 60CAC3EA
P 1550 3650
F 0 "J2" H 1607 4517 50  0000 C CNN
F 1 "AudioJack_Aux" H 1607 4426 50  0000 C CNN
F 2 "SJ2-35825D-SMT-TR:CUI_SJ2-35825D-SMT-TR" H 1550 3650 50  0001 L BNN
F 3 "" H 1550 3650 50  0001 L BNN
F 4 "SJ2-35825D-SMT-TR" H 1550 3650 50  0001 L BNN "MPN"
F 5 "1.01" H 1550 3650 50  0001 L BNN "PART_REV"
F 6 "CUI" H 1550 3650 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer recommendation" H 1550 3650 50  0001 L BNN "STANDARD"
	1    1550 3650
	1    0    0    -1  
$EndComp
Text GLabel 2500 3650 2    50   Input ~ 0
Mic_Out_Aux
Text GLabel 2500 4250 2    50   Input ~ 0
SP
Text GLabel 2500 3050 2    50   BiDi ~ 0
GND
Wire Wire Line
	2500 3050 2150 3050
Wire Wire Line
	2150 3650 2500 3650
Wire Wire Line
	2500 4250 2150 4250
NoConn ~ 2150 4050
NoConn ~ 2150 3850
NoConn ~ 2150 3450
NoConn ~ 2150 3250
$Comp
L SJ2-35825D-SMT-TR:SJ2-35825D-SMT-TR J3
U 1 1 60CEB9ED
P 1550 5500
F 0 "J3" H 1607 6367 50  0000 C CNN
F 1 "AudioJack_KT-8900D" H 1607 6276 50  0000 C CNN
F 2 "SJ2-35825D-SMT-TR:CUI_SJ2-35825D-SMT-TR" H 1550 5500 50  0001 L BNN
F 3 "" H 1550 5500 50  0001 L BNN
F 4 "SJ2-35825D-SMT-TR" H 1550 5500 50  0001 L BNN "MPN"
F 5 "1.01" H 1550 5500 50  0001 L BNN "PART_REV"
F 6 "CUI" H 1550 5500 50  0001 L BNN "MANUFACTURER"
F 7 "Manufacturer recommendation" H 1550 5500 50  0001 L BNN "STANDARD"
	1    1550 5500
	1    0    0    -1  
$EndComp
Text GLabel 2500 5900 2    50   Input ~ 0
Back_PTT_Alt
Text GLabel 2500 6100 2    50   Output ~ 0
Back_PTT
Text GLabel 2500 5700 2    50   Input ~ 0
Back_Sp_Alt
Text GLabel 2500 5500 2    50   Output ~ 0
Back_Speaker
Text GLabel 2500 5300 2    50   Input ~ 0
Back_Mic
Text GLabel 2500 4900 2    50   BiDi ~ 0
Back_GND
Wire Wire Line
	2500 4900 2150 4900
Wire Wire Line
	2500 5300 2150 5300
Wire Wire Line
	2150 5500 2500 5500
Wire Wire Line
	2500 5700 2150 5700
Wire Wire Line
	2150 5900 2500 5900
Wire Wire Line
	2500 6100 2150 6100
NoConn ~ 2150 5100
$Comp
L Connector:TestPoint TP1
U 1 1 6099BED8
P 2600 7300
F 0 "TP1" V 2600 7550 50  0000 C CNN
F 1 "TestPoint" H 2600 7650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 2800 7300 50  0001 C CNN
F 3 "~" H 2800 7300 50  0001 C CNN
	1    2600 7300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6099B65B
P 2700 7300
F 0 "TP2" V 2700 7550 50  0000 C CNN
F 1 "TestPoint" V 2700 7800 50  0000 C CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 2900 7300 50  0001 C CNN
F 3 "~" H 2900 7300 50  0001 C CNN
	1    2700 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 7200 2700 7300
Wire Wire Line
	2600 7200 2600 7300
Text GLabel 2600 7200 1    50   Input ~ 0
TX_LED
Text GLabel 2700 7200 1    50   Input ~ 0
RX_LED
$Comp
L power:GND #PWR0105
U 1 1 60D61C41
P 4900 3050
F 0 "#PWR0105" H 4900 2800 50  0001 C CNN
F 1 "GND" H 4905 2877 50  0000 C CNN
F 2 "" H 4900 3050 50  0001 C CNN
F 3 "" H 4900 3050 50  0001 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3000 4900 3000
Wire Wire Line
	4900 3000 4900 3050
$EndSCHEMATC
