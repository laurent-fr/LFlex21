EESchema Schematic File Version 4
LIBS:mc6809-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Connector_Generic:Conn_02x17_Odd_Even J4
U 1 1 60F7DC93
P 10100 3250
F 0 "J4" H 10150 4267 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 10150 4176 50  0000 C CNN
F 2 "" H 10100 3250 50  0001 C CNN
F 3 "~" H 10100 3250 50  0001 C CNN
	1    10100 3250
	-1   0    0    -1  
$EndComp
Text Label 9300 3350 0    50   ~ 0
STEP
Text Label 9300 3250 0    50   ~ 0
DIR
Text Label 9300 3450 0    50   ~ 0
WRDATA
Text Label 9300 3550 0    50   ~ 0
WRGATE
Wire Wire Line
	9800 3950 9650 3950
Wire Wire Line
	9650 5450 9650 5600
Text Label 9650 4650 1    50   ~ 0
SIDESELECT
Wire Wire Line
	9100 1500 9300 1500
Wire Wire Line
	9300 1500 9300 2950
Wire Wire Line
	9100 900  9400 900 
Wire Wire Line
	10300 2450 10500 2450
Wire Wire Line
	10500 2450 10500 2550
Wire Wire Line
	10300 2550 10500 2550
Connection ~ 10500 2550
Wire Wire Line
	10500 2550 10500 2650
Wire Wire Line
	10300 2650 10500 2650
Connection ~ 10500 2650
Wire Wire Line
	10500 2650 10500 2750
Wire Wire Line
	10300 2750 10500 2750
Connection ~ 10500 2750
Wire Wire Line
	10500 2750 10500 2850
Wire Wire Line
	10300 2850 10500 2850
Connection ~ 10500 2850
Wire Wire Line
	10500 2850 10500 2950
Wire Wire Line
	10300 2950 10500 2950
Connection ~ 10500 2950
Wire Wire Line
	10500 2950 10500 3050
Wire Wire Line
	10300 3050 10500 3050
Connection ~ 10500 3050
Wire Wire Line
	10500 3050 10500 3150
Wire Wire Line
	10300 3150 10500 3150
Connection ~ 10500 3150
Wire Wire Line
	10500 3150 10500 3250
Wire Wire Line
	10300 3250 10500 3250
Connection ~ 10500 3250
Wire Wire Line
	10500 3250 10500 3350
Wire Wire Line
	10300 3350 10500 3350
Connection ~ 10500 3350
Wire Wire Line
	10500 3350 10500 3450
Wire Wire Line
	10300 3450 10500 3450
Connection ~ 10500 3450
Wire Wire Line
	10500 3450 10500 3550
Wire Wire Line
	10300 3550 10500 3550
Connection ~ 10500 3550
Wire Wire Line
	10500 3550 10500 3650
Wire Wire Line
	10300 3650 10500 3650
Connection ~ 10500 3650
Wire Wire Line
	10500 3650 10500 3750
Wire Wire Line
	10300 3750 10500 3750
Connection ~ 10500 3750
Wire Wire Line
	10500 3750 10500 3850
Wire Wire Line
	10300 3850 10500 3850
Connection ~ 10500 3850
Wire Wire Line
	10500 3850 10500 3950
Wire Wire Line
	10300 3950 10500 3950
Connection ~ 10500 3950
Wire Wire Line
	10500 3950 10500 4050
Connection ~ 10500 4050
Wire Wire Line
	10500 4050 10500 4200
$Comp
L power:GND #PWR0184
U 1 1 60FA66EE
P 10500 4200
F 0 "#PWR0184" H 10500 3950 50  0001 C CNN
F 1 "GND" H 10505 4027 50  0000 C CNN
F 2 "" H 10500 4200 50  0001 C CNN
F 3 "" H 10500 4200 50  0001 C CNN
	1    10500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4050 10500 4050
$Comp
L power:GND #PWR0185
U 1 1 60FAEB86
P 4950 4500
F 0 "#PWR0185" H 4950 4250 50  0001 C CNN
F 1 "GND" H 4955 4327 50  0000 C CNN
F 2 "" H 4950 4500 50  0001 C CNN
F 3 "" H 4950 4500 50  0001 C CNN
	1    4950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0186
U 1 1 60FAEFD3
P 4950 2000
F 0 "#PWR0186" H 4950 1850 50  0001 C CNN
F 1 "+5V" H 4965 2173 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2000 4950 2100
Wire Wire Line
	4950 4400 4950 4500
Wire Wire Line
	4350 2400 4000 2400
Wire Wire Line
	4000 2500 4350 2500
Wire Wire Line
	4350 2700 4000 2700
Wire Wire Line
	4350 2800 4000 2800
Wire Wire Line
	4350 2900 4000 2900
Wire Wire Line
	4350 3000 4000 3000
Wire Wire Line
	4350 3100 4000 3100
Wire Wire Line
	4350 3200 4000 3200
Wire Wire Line
	4350 3300 4000 3300
Wire Wire Line
	4350 3400 4000 3400
Wire Wire Line
	4350 3650 4000 3650
Wire Wire Line
	4350 3750 4000 3750
Wire Wire Line
	4350 3850 4000 3850
Wire Wire Line
	9800 2950 9300 2950
$Comp
L 74xx:74LS04 U13
U 1 1 60FE8786
P 1950 1650
F 0 "U13" H 1950 1967 50  0000 C CNN
F 1 "74HC04" H 1950 1876 50  0000 C CNN
F 2 "" H 1950 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1950 1650 50  0001 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60FE99D3
P 2000 2750
F 0 "Y1" H 2000 3018 50  0000 C CNN
F 1 "8Mhz" H 2000 2927 50  0000 C CNN
F 2 "" H 2000 2750 50  0001 C CNN
F 3 "~" H 2000 2750 50  0001 C CNN
	1    2000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 60FEA3FA
P 1900 2100
F 0 "R10" V 1693 2100 50  0000 C CNN
F 1 "4.7M" V 1784 2100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1830 2100 50  0001 C CNN
F 3 "~" H 1900 2100 50  0001 C CNN
	1    1900 2100
	0    1    1    0   
$EndComp
$Comp
L Device:C C23
U 1 1 60FEA9EC
P 2450 3150
F 0 "C23" H 2565 3196 50  0000 L CNN
F 1 "22p" H 2565 3105 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2488 3000 50  0001 C CNN
F 3 "~" H 2450 3150 50  0001 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 60FEB001
P 6800 5850
F 0 "C24" H 6915 5896 50  0000 L CNN
F 1 "100n" H 6915 5805 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6838 5700 50  0001 C CNN
F 3 "~" H 6800 5850 50  0001 C CNN
	1    6800 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 60FEB222
P 7350 5850
F 0 "C25" H 7465 5896 50  0000 L CNN
F 1 "100n" H 7465 5805 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7388 5700 50  0001 C CNN
F 3 "~" H 7350 5850 50  0001 C CNN
	1    7350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 60FEB4C3
P 7900 5850
F 0 "C26" H 8015 5896 50  0000 L CNN
F 1 "100n" H 8015 5805 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7938 5700 50  0001 C CNN
F 3 "~" H 7900 5850 50  0001 C CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 60FEC004
P 2450 2400
F 0 "R11" H 2380 2354 50  0000 R CNN
F 1 "1k" H 2380 2445 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2380 2400 50  0001 C CNN
F 3 "~" H 2450 2400 50  0001 C CNN
	1    2450 2400
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS04 U13
U 2 1 60FEC2F0
P 3000 1650
F 0 "U13" H 3000 1967 50  0000 C CNN
F 1 "74HC04" H 3000 1876 50  0000 C CNN
F 2 "" H 3000 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3000 1650 50  0001 C CNN
	2    3000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 60FECCF6
P 1600 3150
F 0 "C22" H 1715 3196 50  0000 L CNN
F 1 "27p" H 1715 3105 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1638 3000 50  0001 C CNN
F 3 "~" H 1600 3150 50  0001 C CNN
	1    1600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 2450 1650
Wire Wire Line
	2450 2250 2450 2100
Connection ~ 2450 1650
Wire Wire Line
	2450 1650 2250 1650
Wire Wire Line
	1650 1650 1600 1650
Wire Wire Line
	1600 1650 1600 2100
Wire Wire Line
	1750 2100 1600 2100
Connection ~ 1600 2100
Wire Wire Line
	1600 2100 1600 2750
Wire Wire Line
	2050 2100 2450 2100
Connection ~ 2450 2100
Wire Wire Line
	2450 2100 2450 1650
Wire Wire Line
	2450 2550 2450 2750
Wire Wire Line
	2150 2750 2450 2750
Connection ~ 2450 2750
Wire Wire Line
	2450 2750 2450 3000
Wire Wire Line
	1850 2750 1600 2750
Connection ~ 1600 2750
Wire Wire Line
	1600 2750 1600 3000
Wire Wire Line
	3300 1650 5750 1650
Wire Wire Line
	5750 2450 5550 2450
$Comp
L power:GND #PWR0187
U 1 1 61011802
P 1600 3450
F 0 "#PWR0187" H 1600 3200 50  0001 C CNN
F 1 "GND" H 1605 3277 50  0000 C CNN
F 2 "" H 1600 3450 50  0001 C CNN
F 3 "" H 1600 3450 50  0001 C CNN
	1    1600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0188
U 1 1 61011B5F
P 2450 3450
F 0 "#PWR0188" H 2450 3200 50  0001 C CNN
F 1 "GND" H 2455 3277 50  0000 C CNN
F 2 "" H 2450 3450 50  0001 C CNN
F 3 "" H 2450 3450 50  0001 C CNN
	1    2450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3300 2450 3450
Wire Wire Line
	1600 3300 1600 3450
Wire Wire Line
	9650 5600 8950 5600
Wire Wire Line
	6550 1150 6450 1150
Wire Wire Line
	6550 1850 6400 1850
Text Label 6050 1150 0    50   ~ 0
PSEL0
Text Label 6050 1850 0    50   ~ 0
PSEL1
Text Label 8950 5600 0    50   ~ 0
PSIDESELECT
Text Label 5700 4100 0    50   ~ 0
PDDEN
$Comp
L 74xx:74LS06 U15
U 7 1 6104AE41
P 4250 5900
F 0 "U15" H 4480 5946 50  0000 L CNN
F 1 "74LS06" H 4480 5855 50  0000 L CNN
F 2 "" H 4250 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 4250 5900 50  0001 C CNN
	7    4250 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0189
U 1 1 61057CF7
P 6800 6100
F 0 "#PWR0189" H 6800 5850 50  0001 C CNN
F 1 "GND" H 6805 5927 50  0000 C CNN
F 2 "" H 6800 6100 50  0001 C CNN
F 3 "" H 6800 6100 50  0001 C CNN
	1    6800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 6000 6800 6100
$Comp
L power:GND #PWR0190
U 1 1 6105CE12
P 7350 6100
F 0 "#PWR0190" H 7350 5850 50  0001 C CNN
F 1 "GND" H 7355 5927 50  0000 C CNN
F 2 "" H 7350 6100 50  0001 C CNN
F 3 "" H 7350 6100 50  0001 C CNN
	1    7350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6000 7350 6100
$Comp
L power:GND #PWR0191
U 1 1 61061F51
P 7900 6100
F 0 "#PWR0191" H 7900 5850 50  0001 C CNN
F 1 "GND" H 7905 5927 50  0000 C CNN
F 2 "" H 7900 6100 50  0001 C CNN
F 3 "" H 7900 6100 50  0001 C CNN
	1    7900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 6000 7900 6100
$Comp
L power:GND #PWR0192
U 1 1 61067303
P 5200 6500
F 0 "#PWR0192" H 5200 6250 50  0001 C CNN
F 1 "GND" H 5205 6327 50  0000 C CNN
F 2 "" H 5200 6500 50  0001 C CNN
F 3 "" H 5200 6500 50  0001 C CNN
	1    5200 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6400 5200 6500
$Comp
L power:GND #PWR0193
U 1 1 6106C758
P 2800 7150
F 0 "#PWR0193" H 2800 6900 50  0001 C CNN
F 1 "GND" H 2805 6977 50  0000 C CNN
F 2 "" H 2800 7150 50  0001 C CNN
F 3 "" H 2800 7150 50  0001 C CNN
	1    2800 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6400 4250 6500
$Comp
L power:+5V #PWR0194
U 1 1 6107213F
P 4250 5300
F 0 "#PWR0194" H 4250 5150 50  0001 C CNN
F 1 "+5V" H 4265 5473 50  0000 C CNN
F 2 "" H 4250 5300 50  0001 C CNN
F 3 "" H 4250 5300 50  0001 C CNN
	1    4250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5300 4250 5400
$Comp
L power:+5V #PWR0195
U 1 1 6107779A
P 5200 5300
F 0 "#PWR0195" H 5200 5150 50  0001 C CNN
F 1 "+5V" H 5215 5473 50  0000 C CNN
F 2 "" H 5200 5300 50  0001 C CNN
F 3 "" H 5200 5300 50  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5300 5200 5400
$Comp
L power:+5V #PWR0196
U 1 1 6107CFC2
P 6800 5600
F 0 "#PWR0196" H 6800 5450 50  0001 C CNN
F 1 "+5V" H 6815 5773 50  0000 C CNN
F 2 "" H 6800 5600 50  0001 C CNN
F 3 "" H 6800 5600 50  0001 C CNN
	1    6800 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5600 6800 5700
$Comp
L power:+5V #PWR0197
U 1 1 6108282D
P 7350 5600
F 0 "#PWR0197" H 7350 5450 50  0001 C CNN
F 1 "+5V" H 7365 5773 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5600 7350 5700
$Comp
L power:+5V #PWR0198
U 1 1 6108825D
P 7900 5600
F 0 "#PWR0198" H 7900 5450 50  0001 C CNN
F 1 "+5V" H 7915 5773 50  0000 C CNN
F 2 "" H 7900 5600 50  0001 C CNN
F 3 "" H 7900 5600 50  0001 C CNN
	1    7900 5600
	1    0    0    -1  
$EndComp
$Comp
L mylib:WD1770 U17
U 1 1 610A7BC5
P 4950 3300
F 0 "U17" H 4600 4450 50  0000 C CNN
F 1 "WD1770" H 5150 4450 50  0000 C CNN
F 2 "" H 4950 3300 50  0001 C CNN
F 3 "" H 4950 3300 50  0001 C CNN
	1    4950 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 610C2C78
P 8700 2400
F 0 "R19" H 8630 2354 50  0000 R CNN
F 1 "1K" H 8630 2445 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8630 2400 50  0001 C CNN
F 3 "~" H 8700 2400 50  0001 C CNN
	1    8700 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 2550 8700 2750
Wire Wire Line
	8700 2750 9800 2750
$Comp
L 74xx:74LS06 U15
U 2 1 610D0FDE
P 7400 3250
F 0 "U15" H 7350 3250 50  0000 C CNN
F 1 "74LS06" H 7500 3400 50  0000 C CNN
F 2 "" H 7400 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7400 3250 50  0001 C CNN
	2    7400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3250 7700 3250
$Comp
L 74xx:74LS06 U15
U 3 1 610D4B02
P 7150 3550
F 0 "U15" H 7100 3550 50  0000 C CNN
F 1 "74LS06" H 7450 3650 50  0000 C CNN
F 2 "" H 7150 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7150 3550 50  0001 C CNN
	3    7150 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 610D7EDD
P 7950 3250
F 0 "R13" V 7950 3250 50  0000 C CNN
F 1 "47" V 8050 3250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 3250 50  0001 C CNN
F 3 "~" H 7950 3250 50  0001 C CNN
	1    7950 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 610D8817
P 7950 3550
F 0 "R14" V 7950 3550 50  0000 C CNN
F 1 "47" V 8050 3550 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 3550 50  0001 C CNN
F 3 "~" H 7950 3550 50  0001 C CNN
	1    7950 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 3550 7800 3550
$Comp
L 74xx:74LS06 U15
U 5 1 60F7F93E
P 7600 1950
F 0 "U15" H 7550 1950 50  0000 C CNN
F 1 "74LS06" H 7700 2100 50  0000 C CNN
F 2 "" H 7600 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7600 1950 50  0001 C CNN
	5    7600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3550 6850 3550
Wire Wire Line
	6750 3200 6750 3550
Wire Wire Line
	6900 3050 6900 3250
Wire Wire Line
	6900 3250 7100 3250
Wire Wire Line
	8100 3250 9800 3250
Wire Wire Line
	8350 3350 8350 3550
Wire Wire Line
	8350 3350 9800 3350
Wire Wire Line
	8100 3550 8350 3550
$Comp
L 74xx:74LS06 U15
U 4 1 611120BC
P 7450 3800
F 0 "U15" H 7400 3800 50  0000 C CNN
F 1 "74LS06" H 7600 3950 50  0000 C CNN
F 2 "" H 7450 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7450 3800 50  0001 C CNN
	4    7450 3800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U15
U 6 1 611127CC
P 7200 4050
F 0 "U15" H 7150 4050 50  0000 C CNN
F 1 "74LS06" H 7350 3900 50  0000 C CNN
F 2 "" H 7200 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7200 4050 50  0001 C CNN
	6    7200 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 61113BE9
P 7950 3800
F 0 "R15" V 7950 3800 50  0000 C CNN
F 1 "47" V 8050 3800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 3800 50  0001 C CNN
F 3 "~" H 7950 3800 50  0001 C CNN
	1    7950 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 61113DFA
P 7950 4050
F 0 "R16" V 7950 4050 50  0000 C CNN
F 1 "47" V 8050 4050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 4050 50  0001 C CNN
F 3 "~" H 7950 4050 50  0001 C CNN
	1    7950 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3800 7750 3800
Wire Wire Line
	7500 4050 7800 4050
Wire Wire Line
	8450 3450 8450 3800
Wire Wire Line
	8450 3800 8100 3800
Wire Wire Line
	8450 3450 9800 3450
Wire Wire Line
	8550 3550 8550 4050
Wire Wire Line
	8550 4050 8100 4050
Wire Wire Line
	8550 3550 9800 3550
Wire Wire Line
	6650 3350 6650 3800
Wire Wire Line
	6650 3800 7150 3800
Wire Wire Line
	6550 3500 6550 4050
Wire Wire Line
	6550 4050 6900 4050
Wire Wire Line
	6450 3650 6450 4300
Wire Wire Line
	6450 4300 7750 4300
Wire Wire Line
	8650 4300 8650 3650
Wire Wire Line
	8650 3650 9800 3650
Wire Wire Line
	6350 3800 6350 4450
Wire Wire Line
	6350 4450 8050 4450
Wire Wire Line
	8750 4450 8750 3750
Wire Wire Line
	8750 3750 9800 3750
Wire Wire Line
	5750 1650 5750 2450
Wire Wire Line
	5550 2750 8700 2750
Connection ~ 8700 2750
Wire Wire Line
	5550 3050 6900 3050
Wire Wire Line
	5550 3200 6750 3200
Wire Wire Line
	5550 3350 6650 3350
Wire Wire Line
	5550 3500 6550 3500
Wire Wire Line
	5550 3650 6450 3650
Wire Wire Line
	5550 3800 6350 3800
Wire Wire Line
	9800 3850 8850 3850
Wire Wire Line
	8850 3850 8850 4600
Wire Wire Line
	8850 4600 8350 4600
Wire Wire Line
	6250 4600 6250 3950
Wire Wire Line
	6250 3950 5550 3950
Wire Wire Line
	5550 4100 6050 4100
$Comp
L Device:R R12
U 1 1 611899AA
P 7750 4850
F 0 "R12" H 7680 4804 50  0000 R CNN
F 1 "1K" H 7680 4895 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 4850 50  0001 C CNN
F 3 "~" H 7750 4850 50  0001 C CNN
	1    7750 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 6118A60D
P 8050 4850
F 0 "R17" H 7980 4804 50  0000 R CNN
F 1 "1K" H 7980 4895 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7980 4850 50  0001 C CNN
F 3 "~" H 8050 4850 50  0001 C CNN
	1    8050 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 6118A663
P 8350 4850
F 0 "R18" H 8280 4804 50  0000 R CNN
F 1 "220" H 8280 4895 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8280 4850 50  0001 C CNN
F 3 "~" H 8350 4850 50  0001 C CNN
	1    8350 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4700 7750 4300
Connection ~ 7750 4300
Wire Wire Line
	7750 4300 8650 4300
Wire Wire Line
	8050 4700 8050 4450
Connection ~ 8050 4450
Wire Wire Line
	8050 4450 8750 4450
Wire Wire Line
	8350 4700 8350 4600
Connection ~ 8350 4600
Wire Wire Line
	8350 4600 6250 4600
$Comp
L power:+5V #PWR0199
U 1 1 6119E1D3
P 8700 2250
F 0 "#PWR0199" H 8700 2100 50  0001 C CNN
F 1 "+5V" H 8715 2423 50  0000 C CNN
F 2 "" H 8700 2250 50  0001 C CNN
F 3 "" H 8700 2250 50  0001 C CNN
	1    8700 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0200
U 1 1 6119EB00
P 7750 5000
F 0 "#PWR0200" H 7750 4850 50  0001 C CNN
F 1 "+5V" H 7765 5173 50  0000 C CNN
F 2 "" H 7750 5000 50  0001 C CNN
F 3 "" H 7750 5000 50  0001 C CNN
	1    7750 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0201
U 1 1 6119F4CE
P 8050 5000
F 0 "#PWR0201" H 8050 4850 50  0001 C CNN
F 1 "+5V" H 8065 5173 50  0000 C CNN
F 2 "" H 8050 5000 50  0001 C CNN
F 3 "" H 8050 5000 50  0001 C CNN
	1    8050 5000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0202
U 1 1 6119F75B
P 8350 5000
F 0 "#PWR0202" H 8350 4850 50  0001 C CNN
F 1 "+5V" H 8365 5173 50  0000 C CNN
F 2 "" H 8350 5000 50  0001 C CNN
F 3 "" H 8350 5000 50  0001 C CNN
	1    8350 5000
	-1   0    0    1   
$EndComp
Text Label 4000 2400 0    50   ~ 0
A0
Text Label 4000 2500 0    50   ~ 0
A1
Text Label 4000 2700 0    50   ~ 0
D0
Text Label 4000 2800 0    50   ~ 0
D1
Text Label 4000 2900 0    50   ~ 0
D2
Text Label 4000 3000 0    50   ~ 0
D3
Text Label 4000 3100 0    50   ~ 0
D4
Text Label 4000 3200 0    50   ~ 0
D5
Text Label 4000 3300 0    50   ~ 0
D6
Text Label 4000 3400 0    50   ~ 0
D7
Text Label 4000 3650 0    50   ~ 0
~RESET~
Text Label 4000 3750 0    50   ~ 0
R~W~
Text Label 4000 3850 0    50   ~ 0
~CSFLPY~
Wire Wire Line
	2800 5000 2800 5200
Wire Wire Line
	2900 5700 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 2800 6300
Wire Wire Line
	2900 6300 2800 6300
Connection ~ 2800 6300
Wire Wire Line
	2800 6300 2800 6850
Wire Wire Line
	2900 6850 2800 6850
Connection ~ 2800 6850
Wire Wire Line
	2800 6850 2800 7150
Wire Wire Line
	9400 3050 9800 3050
Wire Wire Line
	9400 900  9400 3050
$Comp
L power:GND #PWR05
U 1 1 611F018A
P 9650 2450
F 0 "#PWR05" H 9650 2200 50  0001 C CNN
F 1 "GND" H 9655 2277 50  0000 C CNN
F 2 "" H 9650 2450 50  0001 C CNN
F 3 "" H 9650 2450 50  0001 C CNN
	1    9650 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 2450 9650 2450
$Comp
L 74xx:74LS08 U19
U 1 1 610EC0DC
P 6850 1250
F 0 "U19" H 6850 1575 50  0000 C CNN
F 1 "74LS08" H 6850 1484 50  0000 C CNN
F 2 "" H 6850 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U19
U 2 1 610F096D
P 6850 1950
F 0 "U19" H 6850 2275 50  0000 C CNN
F 1 "74LS08" H 6850 2184 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6850 1950 50  0001 C CNN
	2    6850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 900  6450 900 
Wire Wire Line
	6450 900  6450 1150
Connection ~ 6450 1150
Wire Wire Line
	6450 1150 6050 1150
Wire Wire Line
	8500 1500 6400 1500
Wire Wire Line
	6400 1500 6400 1850
Connection ~ 6400 1850
Wire Wire Line
	6400 1850 6050 1850
Wire Wire Line
	8350 3150 9800 3150
$Comp
L 74xx:74LS06 U18
U 1 1 6111178A
P 7600 1250
F 0 "U18" H 7550 1250 50  0000 C CNN
F 1 "74LS06" H 7700 1400 50  0000 C CNN
F 2 "" H 7600 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1250 7300 1250
Wire Wire Line
	7150 1950 7300 1950
Wire Wire Line
	6550 1350 6000 1350
Wire Wire Line
	6000 2900 5550 2900
Wire Wire Line
	6550 2050 6000 2050
Wire Wire Line
	6000 1350 6000 2050
Connection ~ 6000 2050
Wire Wire Line
	6000 2050 6000 2900
Wire Wire Line
	9800 2850 8450 2850
$Comp
L 74xx:74LS06 U15
U 1 1 6113C2AF
P 8800 900
F 0 "U15" H 8750 900 50  0000 C CNN
F 1 "74LS06" H 8900 1050 50  0000 C CNN
F 2 "" H 8800 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 8800 900 50  0001 C CNN
	1    8800 900 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U18
U 2 1 6113CBDE
P 8800 1500
F 0 "U18" H 8750 1500 50  0000 C CNN
F 1 "74LS06" H 8900 1650 50  0000 C CNN
F 2 "" H 8800 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 8800 1500 50  0001 C CNN
	2    8800 1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U18
U 3 1 6113D7AB
P 9650 5150
F 0 "U18" H 9600 5150 50  0000 C CNN
F 1 "74LS06" H 9950 5250 50  0000 C CNN
F 2 "" H 9650 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 9650 5150 50  0001 C CNN
	3    9650 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 3950 9650 4850
$Comp
L 74xx:74LS06 U18
U 4 1 6113E93F
P 3200 5700
F 0 "U18" H 3150 5700 50  0000 C CNN
F 1 "74LS06" H 3350 5850 50  0000 C CNN
F 2 "" H 3200 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 3200 5700 50  0001 C CNN
	4    3200 5700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U18
U 5 1 6113F777
P 3200 6300
F 0 "U18" H 3150 6300 50  0000 C CNN
F 1 "74LS06" H 3300 6450 50  0000 C CNN
F 2 "" H 3200 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 3200 6300 50  0001 C CNN
	5    3200 6300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS06 U18
U 6 1 61140326
P 3200 6850
F 0 "U18" H 3150 6850 50  0000 C CNN
F 1 "74LS06" H 3350 6700 50  0000 C CNN
F 2 "" H 3200 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 3200 6850 50  0001 C CNN
	6    3200 6850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U19
U 4 1 61140C3B
P 3300 5100
F 0 "U19" H 3300 5425 50  0000 C CNN
F 1 "74LS08" H 3300 5334 50  0000 C CNN
F 2 "" H 3300 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3300 5100 50  0001 C CNN
	4    3300 5100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U19
U 3 1 61142915
P 3300 4450
F 0 "U19" H 3300 4775 50  0000 C CNN
F 1 "74LS08" H 3300 4684 50  0000 C CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3300 4450 50  0001 C CNN
	3    3300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4350 2800 4350
Wire Wire Line
	2800 4350 2800 4550
Connection ~ 2800 5000
Wire Wire Line
	3000 4550 2800 4550
Connection ~ 2800 4550
Wire Wire Line
	2800 4550 2800 5000
Wire Wire Line
	2800 5000 3000 5000
Wire Wire Line
	3000 5200 2800 5200
Connection ~ 2800 5200
Wire Wire Line
	2800 5200 2800 5700
$Comp
L Device:C C28
U 1 1 61173B5D
P 8450 5850
F 0 "C28" H 8565 5896 50  0000 L CNN
F 1 "100n" H 8565 5805 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8488 5700 50  0001 C CNN
F 3 "~" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 61173B63
P 8450 6100
F 0 "#PWR04" H 8450 5850 50  0001 C CNN
F 1 "GND" H 8455 5927 50  0000 C CNN
F 2 "" H 8450 6100 50  0001 C CNN
F 3 "" H 8450 6100 50  0001 C CNN
	1    8450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 6000 8450 6100
$Comp
L power:+5V #PWR03
U 1 1 61173B6A
P 8450 5600
F 0 "#PWR03" H 8450 5450 50  0001 C CNN
F 1 "+5V" H 8465 5773 50  0000 C CNN
F 2 "" H 8450 5600 50  0001 C CNN
F 3 "" H 8450 5600 50  0001 C CNN
	1    8450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5600 8450 5700
$Comp
L 74xx:74LS08 U19
U 5 1 6117CC86
P 6150 5900
F 0 "U19" H 6380 5946 50  0000 L CNN
F 1 "74LS08" H 6380 5855 50  0000 L CNN
F 2 "" H 6150 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6150 5900 50  0001 C CNN
	5    6150 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 6117EAEC
P 6150 5300
F 0 "#PWR01" H 6150 5150 50  0001 C CNN
F 1 "+5V" H 6165 5473 50  0000 C CNN
F 2 "" H 6150 5300 50  0001 C CNN
F 3 "" H 6150 5300 50  0001 C CNN
	1    6150 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5300 6150 5400
$Comp
L power:GND #PWR02
U 1 1 611881DF
P 6150 6500
F 0 "#PWR02" H 6150 6250 50  0001 C CNN
F 1 "GND" H 6155 6327 50  0000 C CNN
F 2 "" H 6150 6500 50  0001 C CNN
F 3 "" H 6150 6500 50  0001 C CNN
	1    6150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6400 6150 6500
Wire Wire Line
	7900 1250 8450 1250
Wire Wire Line
	8450 1250 8450 2850
Wire Wire Line
	7900 1950 8350 1950
Wire Wire Line
	8350 1950 8350 3150
Text GLabel 1150 5850 2    50   UnSpc ~ 0
D0
Text GLabel 1150 5950 2    50   UnSpc ~ 0
D1
Text GLabel 1150 6050 2    50   UnSpc ~ 0
D2
Text GLabel 1150 6150 2    50   UnSpc ~ 0
D3
Text GLabel 1150 6250 2    50   UnSpc ~ 0
D4
Text GLabel 1150 6350 2    50   UnSpc ~ 0
D5
Text GLabel 1150 6450 2    50   UnSpc ~ 0
D6
Text GLabel 1150 6550 2    50   UnSpc ~ 0
D7
Wire Wire Line
	950  5850 1150 5850
Wire Wire Line
	1150 5950 950  5950
Wire Wire Line
	950  6050 1150 6050
Wire Wire Line
	1150 6150 950  6150
Wire Wire Line
	950  6250 1150 6250
Wire Wire Line
	1150 6350 950  6350
Wire Wire Line
	950  6450 1150 6450
Wire Wire Line
	1150 6550 950  6550
Text Label 1150 5850 2    50   ~ 0
D0
Text Label 1150 5950 2    50   ~ 0
D1
Text Label 1150 6050 2    50   ~ 0
D2
Text Label 1150 6150 2    50   ~ 0
D3
Text Label 1150 6250 2    50   ~ 0
D4
Text Label 1150 6350 2    50   ~ 0
D5
Text Label 1150 6450 2    50   ~ 0
D6
Text Label 1150 6550 2    50   ~ 0
D7
Wire Wire Line
	1500 5850 1700 5850
Wire Wire Line
	1500 5950 1700 5950
Text Label 1550 5850 0    50   ~ 0
A0
Text Label 1550 5950 0    50   ~ 0
A1
Text GLabel 1700 5850 2    50   UnSpc ~ 0
A0
Text GLabel 1700 5950 2    50   UnSpc ~ 0
A1
Text Label 950  5050 0    50   ~ 0
~RESET~
Text GLabel 1300 5050 2    50   UnSpc ~ 0
~RESET~
Wire Wire Line
	950  5050 1300 5050
Text Label 950  4900 0    50   ~ 0
R~W~
Text GLabel 1300 4900 2    50   UnSpc ~ 0
R~W~
Wire Wire Line
	950  4900 1300 4900
Text Label 950  5200 0    50   ~ 0
~CSFLPY~
Text GLabel 1250 5200 2    50   UnSpc ~ 0
~CSFLPY~
Wire Wire Line
	950  5200 1250 5200
Wire Wire Line
	7900 5600 7900 5700
Text Label 900  6850 0    50   ~ 0
PSEL0
Text Label 900  6950 0    50   ~ 0
PSEL1
Text Label 900  7050 0    50   ~ 0
PSIDESELECT
Text Label 900  7150 0    50   ~ 0
PDDEN
Text GLabel 1450 6850 2    50   UnSpc ~ 0
PSEL0
Text GLabel 1450 6950 2    50   UnSpc ~ 0
PSEL1
Text GLabel 1450 7050 2    50   UnSpc ~ 0
PSIDESELECT
Text GLabel 1450 7150 2    50   UnSpc ~ 0
PDDEN
Wire Wire Line
	1450 6850 900  6850
Wire Wire Line
	900  6950 1450 6950
Wire Wire Line
	1450 7050 900  7050
Wire Wire Line
	900  7150 1450 7150
$Comp
L 74xx:74LS06 U18
U 7 1 6146DE5B
P 5200 5900
F 0 "U18" H 5500 5950 50  0000 C CNN
F 1 "74LS06" H 5550 5850 50  0000 C CNN
F 2 "" H 5200 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS06" H 5200 5900 50  0001 C CNN
	7    5200 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:CTRIM C29
U 1 1 614A6ED9
P 2900 3150
F 0 "C29" H 3016 3196 50  0000 L CNN
F 1 "5-15pF" H 3016 3105 50  0000 L CNN
F 2 "" H 2900 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2750 2900 2750
Wire Wire Line
	2900 2750 2900 3000
$Comp
L power:GND #PWR0203
U 1 1 614B7669
P 2900 3450
F 0 "#PWR0203" H 2900 3200 50  0001 C CNN
F 1 "GND" H 2905 3277 50  0000 C CNN
F 2 "" H 2900 3450 50  0001 C CNN
F 3 "" H 2900 3450 50  0001 C CNN
	1    2900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3300 2900 3450
$EndSCHEMATC
