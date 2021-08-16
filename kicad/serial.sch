EESchema Schematic File Version 4
LIBS:mc6809-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L Interface_UART:MAX202 U7
U 1 1 60D4D102
P 8350 2900
F 0 "U7" H 8500 4100 50  0000 C CNN
F 1 "MAX202" H 8600 4000 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 8400 1850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/max202.pdf" H 8350 3000 50  0001 C CNN
	1    8350 2900
	1    0    0    -1  
$EndComp
$Comp
L mylib:MC6840_PTM U5
U 1 1 60D5308C
P 2500 3200
F 0 "U5" H 2650 4700 50  0000 C CNN
F 1 "MC6840_PTM" H 2850 4600 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_LongPads" H 2550 1850 50  0001 L CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/MC6840.pdf" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
$Comp
L mylib:MC6850_ACIA U6
U 1 1 60D56C03
P 5500 3100
F 0 "U6" H 5650 4500 50  0000 C CNN
F 1 "MC6850_ACIA" H 5850 4400 50  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_LongPads" H 5550 1950 50  0001 L CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/MC6850.pdf" H 5500 3100 50  0001 C CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2000 1800 2000
Wire Wire Line
	2000 2100 1800 2100
Wire Wire Line
	2000 2200 1800 2200
Wire Wire Line
	2000 2300 1800 2300
Wire Wire Line
	2000 2400 1800 2400
Wire Wire Line
	2000 2500 1800 2500
Wire Wire Line
	2000 2600 1800 2600
Wire Wire Line
	2000 2700 1800 2700
Wire Wire Line
	2000 3000 1800 3000
Wire Wire Line
	2000 3100 1800 3100
Wire Wire Line
	2000 3200 1800 3200
Wire Wire Line
	2000 3700 1800 3700
Wire Wire Line
	2000 3800 1800 3800
Wire Wire Line
	2000 4300 1650 4300
Wire Wire Line
	5000 2000 4800 2000
Wire Wire Line
	5000 2100 4800 2100
Wire Wire Line
	5000 2200 4800 2200
Wire Wire Line
	5000 2300 4800 2300
Wire Wire Line
	5000 2400 4800 2400
Wire Wire Line
	5000 2500 4800 2500
Wire Wire Line
	5000 2600 4800 2600
Wire Wire Line
	5000 2700 4800 2700
Wire Wire Line
	5000 2900 4800 2900
Wire Wire Line
	5000 3000 4800 3000
Wire Wire Line
	5000 3600 4800 3600
Wire Wire Line
	5000 3950 4850 3950
Wire Wire Line
	4850 3950 4850 4050
Wire Wire Line
	4850 4050 5000 4050
Connection ~ 4850 3950
Text Label 3250 6100 1    50   ~ 0
~NMI~
$Comp
L Device:CP C11
U 1 1 60D67AED
P 7300 2150
F 0 "C11" H 7418 2196 50  0000 L CNN
F 1 "1u" H 7418 2105 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 7338 2000 50  0001 C CNN
F 3 "~" H 7300 2150 50  0001 C CNN
	1    7300 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C14
U 1 1 60D680AF
P 9500 2150
F 0 "C14" H 9618 2196 50  0000 L CNN
F 1 "1u" H 9618 2105 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 9538 2000 50  0001 C CNN
F 3 "~" H 9500 2150 50  0001 C CNN
	1    9500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C15
U 1 1 60D68785
P 9600 2800
F 0 "C15" V 9345 2800 50  0000 C CNN
F 1 "1u" V 9436 2800 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 9638 2650 50  0001 C CNN
F 3 "~" H 9600 2800 50  0001 C CNN
	1    9600 2800
	0    1    1    0   
$EndComp
$Comp
L Device:CP C16
U 1 1 60D69680
P 9950 2500
F 0 "C16" V 9695 2500 50  0000 C CNN
F 1 "1u" V 9786 2500 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 9988 2350 50  0001 C CNN
F 3 "~" H 9950 2500 50  0001 C CNN
	1    9950 2500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 60D6DCF9
P 8350 1000
F 0 "#PWR0132" H 8350 850 50  0001 C CNN
F 1 "+5V" H 8365 1173 50  0000 C CNN
F 2 "" H 8350 1000 50  0001 C CNN
F 3 "" H 8350 1000 50  0001 C CNN
	1    8350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 60D6E224
P 5500 1700
F 0 "#PWR0133" H 5500 1550 50  0001 C CNN
F 1 "+5V" H 5515 1873 50  0000 C CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0134
U 1 1 60D6E76F
P 2500 1700
F 0 "#PWR0134" H 2500 1550 50  0001 C CNN
F 1 "+5V" H 2515 1873 50  0000 C CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "" H 2500 1700 50  0001 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 60D6EE77
P 2500 4750
F 0 "#PWR0135" H 2500 4500 50  0001 C CNN
F 1 "GND" H 2505 4577 50  0000 C CNN
F 2 "" H 2500 4750 50  0001 C CNN
F 3 "" H 2500 4750 50  0001 C CNN
	1    2500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 60D6F53F
P 5500 4400
F 0 "#PWR0136" H 5500 4150 50  0001 C CNN
F 1 "GND" H 5505 4227 50  0000 C CNN
F 2 "" H 5500 4400 50  0001 C CNN
F 3 "" H 5500 4400 50  0001 C CNN
	1    5500 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 60D6FB67
P 8350 4200
F 0 "#PWR0137" H 8350 3950 50  0001 C CNN
F 1 "GND" H 8355 4027 50  0000 C CNN
F 2 "" H 8350 4200 50  0001 C CNN
F 3 "" H 8350 4200 50  0001 C CNN
	1    8350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4100 8350 4200
Wire Wire Line
	5500 4300 5500 4400
Wire Wire Line
	2500 4600 2500 4750
Wire Wire Line
	2500 1700 2500 1800
Wire Wire Line
	5500 1700 5500 1800
$Comp
L Device:CP C13
U 1 1 60D75B41
P 7950 1350
F 0 "C13" H 8068 1396 50  0000 L CNN
F 1 "1u" H 8068 1305 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 7988 1200 50  0001 C CNN
F 3 "~" H 7950 1350 50  0001 C CNN
	1    7950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 60D76233
P 7950 1600
F 0 "#PWR0138" H 7950 1350 50  0001 C CNN
F 1 "GND" H 7955 1427 50  0000 C CNN
F 2 "" H 7950 1600 50  0001 C CNN
F 3 "" H 7950 1600 50  0001 C CNN
	1    7950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1000 8350 1100
Wire Wire Line
	7950 1200 7950 1100
Wire Wire Line
	7950 1100 8350 1100
Connection ~ 8350 1100
Wire Wire Line
	8350 1100 8350 1700
Wire Wire Line
	7950 1500 7950 1600
Wire Wire Line
	9150 2000 9500 2000
Wire Wire Line
	9150 2300 9500 2300
Wire Wire Line
	9150 2500 9800 2500
Wire Wire Line
	9150 2800 9450 2800
Wire Wire Line
	7550 2000 7300 2000
Wire Wire Line
	7300 2300 7550 2300
$Comp
L power:+5V #PWR0139
U 1 1 60D8237F
P 10250 2350
F 0 "#PWR0139" H 10250 2200 50  0001 C CNN
F 1 "+5V" H 10265 2523 50  0000 C CNN
F 2 "" H 10250 2350 50  0001 C CNN
F 3 "" H 10250 2350 50  0001 C CNN
	1    10250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0140
U 1 1 60D82A45
P 9950 2800
F 0 "#PWR0140" H 9950 2550 50  0001 C CNN
F 1 "GND" V 9955 2672 50  0000 R CNN
F 2 "" H 9950 2800 50  0001 C CNN
F 3 "" H 9950 2800 50  0001 C CNN
	1    9950 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10100 2500 10250 2500
Wire Wire Line
	10250 2500 10250 2350
Wire Wire Line
	9750 2800 9950 2800
Text Label 1800 2000 0    50   ~ 0
D0
Text Label 1800 2100 0    50   ~ 0
D1
Text Label 1800 2200 0    50   ~ 0
D2
Text Label 1800 2300 0    50   ~ 0
D3
Text Label 1800 2400 0    50   ~ 0
D4
Text Label 1800 2500 0    50   ~ 0
D5
Text Label 1800 2600 0    50   ~ 0
D6
Text Label 1800 2700 0    50   ~ 0
D7
Text Label 1800 3000 0    50   ~ 0
A0
Text Label 1800 3100 0    50   ~ 0
A1
Text Label 1800 3200 0    50   ~ 0
A2
Text Label 1750 3400 0    50   ~ 0
~CSPTM~
Wire Wire Line
	1750 3400 2000 3400
Text Label 1800 3800 0    50   ~ 0
E
Text Label 1650 4300 0    50   ~ 0
~RESET~
Text Label 4800 2000 0    50   ~ 0
D0
Text Label 4800 2100 0    50   ~ 0
D1
Text Label 4800 2200 0    50   ~ 0
D2
Text Label 4800 2300 0    50   ~ 0
D3
Text Label 4800 2400 0    50   ~ 0
D4
Text Label 4800 2500 0    50   ~ 0
D5
Text Label 4800 2600 0    50   ~ 0
D6
Text Label 4800 2700 0    50   ~ 0
D7
Text Label 4800 3000 0    50   ~ 0
A0
$Comp
L power:+5V #PWR0141
U 1 1 60D88F4D
P 1900 3500
F 0 "#PWR0141" H 1900 3350 50  0001 C CNN
F 1 "+5V" V 1915 3628 50  0000 L CNN
F 2 "" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	1    1900 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3500 2000 3500
$Comp
L power:+5V #PWR0142
U 1 1 60D8AB03
P 4900 3200
F 0 "#PWR0142" H 4900 3050 50  0001 C CNN
F 1 "+5V" V 4915 3328 50  0000 L CNN
F 2 "" H 4900 3200 50  0001 C CNN
F 3 "" H 4900 3200 50  0001 C CNN
	1    4900 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0143
U 1 1 60D8B335
P 4900 3300
F 0 "#PWR0143" H 4900 3150 50  0001 C CNN
F 1 "+5V" V 4915 3428 50  0000 L CNN
F 2 "" H 4900 3300 50  0001 C CNN
F 3 "" H 4900 3300 50  0001 C CNN
	1    4900 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 3200 4900 3200
Wire Wire Line
	4900 3300 5000 3300
Wire Wire Line
	4650 3400 5000 3400
Text Label 4650 3400 0    50   ~ 0
~CSACIA~
Text Label 3350 6100 1    50   ~ 0
~IRQ~
Text Label 4800 3600 0    50   ~ 0
E
Text Label 4800 2900 0    50   ~ 0
R~W~
Text Label 1800 3700 0    50   ~ 0
R~W~
$Comp
L power:GND #PWR0144
U 1 1 60D9CB3B
P 6100 3050
F 0 "#PWR0144" H 6100 2800 50  0001 C CNN
F 1 "GND" H 6105 2877 50  0000 C CNN
F 2 "" H 6100 3050 50  0001 C CNN
F 3 "" H 6100 3050 50  0001 C CNN
	1    6100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2900 6100 2900
Wire Wire Line
	6100 2900 6100 3050
$Comp
L Device:C C?
U 1 1 60DDE820
P 7000 5300
AR Path="/60CCD98C/60DDE820" Ref="C?"  Part="1" 
AR Path="/60CCD9CF/60DDE820" Ref="C10"  Part="1" 
F 0 "C10" H 7115 5346 50  0000 L CNN
F 1 "100n" H 7115 5255 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7038 5150 50  0001 C CNN
F 3 "~" H 7000 5300 50  0001 C CNN
	1    7000 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60DDE826
P 7000 5050
AR Path="/60CCD98C/60DDE826" Ref="#PWR?"  Part="1" 
AR Path="/60CCD9CF/60DDE826" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7000 4900 50  0001 C CNN
F 1 "+5V" H 7015 5223 50  0000 C CNN
F 2 "" H 7000 5050 50  0001 C CNN
F 3 "" H 7000 5050 50  0001 C CNN
	1    7000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DDE82C
P 7000 5550
AR Path="/60CCD98C/60DDE82C" Ref="#PWR?"  Part="1" 
AR Path="/60CCD9CF/60DDE82C" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 7000 5300 50  0001 C CNN
F 1 "GND" H 7005 5377 50  0000 C CNN
F 2 "" H 7000 5550 50  0001 C CNN
F 3 "" H 7000 5550 50  0001 C CNN
	1    7000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 5050 7000 5150
Wire Wire Line
	7000 5450 7000 5550
$Comp
L Device:C C?
U 1 1 60DE06DD
P 7550 5300
AR Path="/60CCD98C/60DE06DD" Ref="C?"  Part="1" 
AR Path="/60CCD9CF/60DE06DD" Ref="C12"  Part="1" 
F 0 "C12" H 7665 5346 50  0000 L CNN
F 1 "100n" H 7665 5255 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7588 5150 50  0001 C CNN
F 3 "~" H 7550 5300 50  0001 C CNN
	1    7550 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60DE06E3
P 7550 5050
AR Path="/60CCD98C/60DE06E3" Ref="#PWR?"  Part="1" 
AR Path="/60CCD9CF/60DE06E3" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 7550 4900 50  0001 C CNN
F 1 "+5V" H 7565 5223 50  0000 C CNN
F 2 "" H 7550 5050 50  0001 C CNN
F 3 "" H 7550 5050 50  0001 C CNN
	1    7550 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DE06E9
P 7550 5550
AR Path="/60CCD98C/60DE06E9" Ref="#PWR?"  Part="1" 
AR Path="/60CCD9CF/60DE06E9" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 7550 5300 50  0001 C CNN
F 1 "GND" H 7555 5377 50  0000 C CNN
F 2 "" H 7550 5550 50  0001 C CNN
F 3 "" H 7550 5550 50  0001 C CNN
	1    7550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5050 7550 5150
Wire Wire Line
	7550 5450 7550 5550
Wire Wire Line
	7550 3600 6750 3600
Wire Wire Line
	6750 3600 6750 2300
Wire Wire Line
	6750 2300 5900 2300
Wire Wire Line
	5900 2450 6900 2450
Wire Wire Line
	6900 2450 6900 3200
Wire Wire Line
	6900 3200 7550 3200
Wire Wire Line
	5900 2600 6600 2600
Wire Wire Line
	6600 2600 6600 3400
Wire Wire Line
	6600 3400 7550 3400
Wire Wire Line
	5900 2750 7000 2750
Wire Wire Line
	7000 2750 7000 3000
Wire Wire Line
	7000 3000 7550 3000
$Comp
L Connector:DB9_Male J2
U 1 1 60E09EAE
P 10600 3500
F 0 "J2" H 10518 2808 50  0000 C CNN
F 1 "DB9_Male" H 10518 2899 50  0000 C CNN
F 2 "Connectors_DSub:DSUB-9_Male_Horizontal_Pitch2.77x2.84mm_EdgePinOffset7.70mm_Housed_MountingHolesOffset9.12mm" H 10600 3500 50  0001 C CNN
F 3 " ~" H 10600 3500 50  0001 C CNN
	1    10600 3500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 60E0AFB7
P 10200 4150
F 0 "#PWR0160" H 10200 3900 50  0001 C CNN
F 1 "GND" H 10205 3977 50  0000 C CNN
F 2 "" H 10200 4150 50  0001 C CNN
F 3 "" H 10200 4150 50  0001 C CNN
	1    10200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3900 10200 3900
Wire Wire Line
	10200 3900 10200 4150
Wire Wire Line
	10300 3300 9750 3300
Wire Wire Line
	9750 3300 9750 3600
Wire Wire Line
	9750 3600 9150 3600
Wire Wire Line
	9150 3200 9650 3200
Wire Wire Line
	9650 3200 9650 3500
Wire Wire Line
	9650 3500 10300 3500
Wire Wire Line
	10300 3600 9900 3600
Wire Wire Line
	9900 3600 9900 3750
Wire Wire Line
	9900 3750 9350 3750
Wire Wire Line
	9350 3750 9350 3400
Wire Wire Line
	9350 3400 9150 3400
Wire Wire Line
	10300 3400 9900 3400
Wire Wire Line
	9900 3400 9900 3000
Wire Wire Line
	9900 3000 9150 3000
Text Label 10100 3300 0    50   ~ 0
RxD
Text Label 10100 3400 0    50   ~ 0
RTS
Text Label 10100 3500 0    50   ~ 0
TxD
Text Label 10100 3600 0    50   ~ 0
CTS
Text GLabel 1250 6600 2    50   UnSpc ~ 0
D0
Text GLabel 1250 6700 2    50   UnSpc ~ 0
D1
Text GLabel 1250 6800 2    50   UnSpc ~ 0
D2
Text GLabel 1250 6900 2    50   UnSpc ~ 0
D3
Text GLabel 1250 7000 2    50   UnSpc ~ 0
D4
Text GLabel 1250 7100 2    50   UnSpc ~ 0
D5
Text GLabel 1250 7200 2    50   UnSpc ~ 0
D6
Text GLabel 1250 7300 2    50   UnSpc ~ 0
D7
Wire Wire Line
	1050 6600 1250 6600
Wire Wire Line
	1250 6700 1050 6700
Wire Wire Line
	1050 6800 1250 6800
Wire Wire Line
	1250 6900 1050 6900
Wire Wire Line
	1050 7000 1250 7000
Wire Wire Line
	1250 7100 1050 7100
Wire Wire Line
	1050 7200 1250 7200
Wire Wire Line
	1250 7300 1050 7300
Text Label 1250 6600 2    50   ~ 0
D0
Text Label 1250 6700 2    50   ~ 0
D1
Text Label 1250 6800 2    50   ~ 0
D2
Text Label 1250 6900 2    50   ~ 0
D3
Text Label 1250 7000 2    50   ~ 0
D4
Text Label 1250 7100 2    50   ~ 0
D5
Text Label 1250 7200 2    50   ~ 0
D6
Text Label 1250 7300 2    50   ~ 0
D7
Wire Wire Line
	1600 6600 1800 6600
Wire Wire Line
	1600 6700 1800 6700
Wire Wire Line
	1600 6800 1800 6800
Text Label 1650 6600 0    50   ~ 0
A0
Text Label 1650 6700 0    50   ~ 0
A1
Text Label 1650 6800 0    50   ~ 0
A2
Text GLabel 1800 6600 2    50   UnSpc ~ 0
A0
Text GLabel 1800 6700 2    50   UnSpc ~ 0
A1
Text GLabel 1800 6800 2    50   UnSpc ~ 0
A2
Text Label 1050 5800 0    50   ~ 0
~RESET~
Text Label 1050 5950 0    50   ~ 0
~NMI~
Text Label 1050 6100 0    50   ~ 0
~IRQ~
Text GLabel 1400 5800 2    50   UnSpc ~ 0
~RESET~
Text GLabel 1400 5950 2    50   UnSpc ~ 0
~NMI~
Text GLabel 1400 6100 2    50   UnSpc ~ 0
~IRQ~
Wire Wire Line
	1050 5800 1400 5800
Wire Wire Line
	1050 5950 1400 5950
Wire Wire Line
	1050 6100 1400 6100
Text Label 1050 5650 0    50   ~ 0
R~W~
Text GLabel 1400 5650 2    50   UnSpc ~ 0
R~W~
Wire Wire Line
	1050 5650 1400 5650
Text Label 1050 5500 0    50   ~ 0
E
Text GLabel 1400 5500 2    50   UnSpc ~ 0
E
Wire Wire Line
	1050 5500 1400 5500
Text Label 2300 6600 0    50   ~ 0
~CSPTM~
Text Label 2300 6750 0    50   ~ 0
~CSACIA~
Text GLabel 2600 6600 2    50   UnSpc ~ 0
~CSPTM~
Text GLabel 2600 6750 2    50   UnSpc ~ 0
~CSACIA~
Wire Wire Line
	2300 6600 2600 6600
Wire Wire Line
	2300 6750 2600 6750
$Comp
L Switch:SW_DIP_x04 SW2
U 1 1 612A0C8C
P 3350 5450
F 0 "SW2" V 3304 5220 50  0000 R CNN
F 1 "SW_DIP_x04" V 3395 5220 50  0000 R CNN
F 2 "Buttons_Switches_THT:SW_DIP_x4_W7.62mm_Slide" H 3350 5450 50  0001 C CNN
F 3 "~" H 3350 5450 50  0001 C CNN
	1    3350 5450
	0    -1   1    0   
$EndComp
Wire Wire Line
	1550 4000 1550 5050
Wire Wire Line
	1550 4000 2000 4000
Wire Wire Line
	3950 3100 3950 3950
Wire Wire Line
	3950 3950 4850 3950
Wire Wire Line
	3000 3100 3950 3100
Wire Wire Line
	3250 5750 3250 6100
Wire Wire Line
	3350 5750 3350 5850
Wire Wire Line
	3450 5750 3450 5850
Wire Wire Line
	3450 5850 3350 5850
Connection ~ 3350 5850
Wire Wire Line
	3350 5850 3350 6100
Wire Wire Line
	1550 5050 3350 5050
Wire Wire Line
	3350 5050 3350 5150
Wire Wire Line
	3000 2550 3450 2550
Wire Wire Line
	3450 2550 3450 3800
Wire Wire Line
	3250 3800 3250 5150
Wire Wire Line
	3450 3800 3450 5150
Wire Wire Line
	3250 3800 5000 3800
$Comp
L Connector:TestPoint TP3
U 1 1 6169D384
P 3950 3000
F 0 "TP3" H 4008 3118 50  0000 L CNN
F 1 "Acia_Clk" H 4008 3027 50  0000 L CNN
F 2 "Connectors:Pin_d1.0mm_L10.0mm" H 4150 3000 50  0001 C CNN
F 3 "~" H 4150 3000 50  0001 C CNN
	1    3950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3000 3950 3100
Connection ~ 3950 3100
Text Label 2100 7000 0    50   ~ 0
PSW1
Text GLabel 2650 7000 2    50   UnSpc ~ 0
PSW1
Wire Wire Line
	2650 7000 2100 7000
Wire Wire Line
	3150 5150 3150 4700
Text Label 3150 4950 1    50   ~ 0
PSW1
$EndSCHEMATC
