EESchema Schematic File Version 4
LIBS:mc6809-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Memory_EPROM:27C64 U8
U 1 1 60D07D4D
P 4650 2750
F 0 "U8" H 4800 3850 50  0000 C CNN
F 1 "27C64" H 4850 3750 50  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_LongPads" H 4650 2750 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11107M.pdf" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:628128_DIP32_SSOP32 U9
U 1 1 60D0889C
P 6950 2750
F 0 "U9" H 7100 3850 50  0000 C CNN
F 1 "628128_DIP32_SSOP32" H 7450 3750 50  0000 C CNN
F 2 "Housings_DIP:DIP-32_W15.24mm_LongPads" H 6950 2750 50  0001 C CNN
F 3 "http://www.futurlec.com/Datasheet/Memory/628128.pdf" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1950 4000 1950
Wire Wire Line
	4250 2050 4000 2050
Wire Wire Line
	4250 2150 4000 2150
Wire Wire Line
	4250 2250 4000 2250
Wire Wire Line
	4250 2350 4000 2350
Wire Wire Line
	4250 2450 4000 2450
Wire Wire Line
	4250 2550 4000 2550
Wire Wire Line
	4250 2650 4000 2650
Wire Wire Line
	4250 2750 4000 2750
Wire Wire Line
	4250 2850 4000 2850
Wire Wire Line
	4250 2950 4000 2950
Wire Wire Line
	4250 3050 4000 3050
Wire Wire Line
	4250 3150 4000 3150
Wire Wire Line
	5050 1950 5300 1950
Wire Wire Line
	5050 2050 5300 2050
Wire Wire Line
	5050 2150 5300 2150
Wire Wire Line
	5050 2250 5300 2250
Wire Wire Line
	5050 2350 5300 2350
Wire Wire Line
	5050 2450 5300 2450
Wire Wire Line
	5050 2550 5300 2550
Wire Wire Line
	5050 2650 5300 2650
Wire Wire Line
	6450 1950 6200 1950
Wire Wire Line
	6450 2050 6200 2050
Wire Wire Line
	6450 2150 6200 2150
Wire Wire Line
	6450 2250 6200 2250
Wire Wire Line
	6450 2350 6200 2350
Wire Wire Line
	6450 2450 6200 2450
Wire Wire Line
	6450 2550 6200 2550
Wire Wire Line
	6450 2650 6200 2650
Wire Wire Line
	6450 2750 6200 2750
Wire Wire Line
	6450 2850 6200 2850
Wire Wire Line
	6450 2950 6200 2950
Wire Wire Line
	6450 3050 6200 3050
Wire Wire Line
	6450 3150 6200 3150
Wire Wire Line
	6450 3250 6200 3250
Wire Wire Line
	6450 3350 6200 3350
Wire Wire Line
	6450 3450 6200 3450
Wire Wire Line
	6450 3550 6200 3550
Wire Wire Line
	7450 1950 7700 1950
Wire Wire Line
	7450 2050 7700 2050
Wire Wire Line
	7450 2150 7700 2150
Wire Wire Line
	7450 2250 7700 2250
Wire Wire Line
	7450 2350 7700 2350
Wire Wire Line
	7450 2450 7700 2450
Wire Wire Line
	7450 2550 7700 2550
Wire Wire Line
	7450 2650 7700 2650
$Comp
L power:+5V #PWR0149
U 1 1 60D18C94
P 4650 1550
F 0 "#PWR0149" H 4650 1400 50  0001 C CNN
F 1 "+5V" H 4665 1723 50  0000 C CNN
F 2 "" H 4650 1550 50  0001 C CNN
F 3 "" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0150
U 1 1 60D18FA6
P 6950 1550
F 0 "#PWR0150" H 6950 1400 50  0001 C CNN
F 1 "+5V" H 6965 1723 50  0000 C CNN
F 2 "" H 6950 1550 50  0001 C CNN
F 3 "" H 6950 1550 50  0001 C CNN
	1    6950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1550 6950 1750
Wire Wire Line
	4650 1550 4650 1750
$Comp
L power:+5V #PWR0151
U 1 1 60D1BBC8
P 7700 2950
F 0 "#PWR0151" H 7700 2800 50  0001 C CNN
F 1 "+5V" V 7715 3078 50  0000 L CNN
F 2 "" H 7700 2950 50  0001 C CNN
F 3 "" H 7700 2950 50  0001 C CNN
	1    7700 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2950 7450 2950
$Comp
L power:GND #PWR0152
U 1 1 60D1CE11
P 4650 3950
F 0 "#PWR0152" H 4650 3700 50  0001 C CNN
F 1 "GND" H 4655 3777 50  0000 C CNN
F 2 "" H 4650 3950 50  0001 C CNN
F 3 "" H 4650 3950 50  0001 C CNN
	1    4650 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 60D1D61D
P 6950 3950
F 0 "#PWR0153" H 6950 3700 50  0001 C CNN
F 1 "GND" H 6955 3777 50  0000 C CNN
F 2 "" H 6950 3950 50  0001 C CNN
F 3 "" H 6950 3950 50  0001 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3750 6950 3950
Wire Wire Line
	4650 3850 4650 3950
Text Label 4050 1950 0    50   ~ 0
A0
Text Label 4050 2050 0    50   ~ 0
A1
Text Label 4050 2150 0    50   ~ 0
A2
Text Label 4050 2250 0    50   ~ 0
A3
Text Label 4050 2350 0    50   ~ 0
A4
Text Label 4050 2450 0    50   ~ 0
A5
Text Label 4050 2550 0    50   ~ 0
A6
Text Label 4050 2650 0    50   ~ 0
A7
Text Label 4050 2750 0    50   ~ 0
A8
Text Label 4050 2850 0    50   ~ 0
A9
Text Label 4050 2950 0    50   ~ 0
A10
Text Label 4050 3050 0    50   ~ 0
A11
Text Label 4050 3150 0    50   ~ 0
A12
Text Label 5150 1950 0    50   ~ 0
D0
Text Label 5150 2050 0    50   ~ 0
D1
Text Label 5150 2150 0    50   ~ 0
D2
Text Label 5150 2250 0    50   ~ 0
D3
Text Label 5150 2350 0    50   ~ 0
D4
Text Label 5150 2450 0    50   ~ 0
D5
Text Label 5150 2550 0    50   ~ 0
D6
Text Label 5150 2650 0    50   ~ 0
D7
Text Label 6250 1950 0    50   ~ 0
A0
Text Label 6250 2050 0    50   ~ 0
A1
Text Label 6250 2150 0    50   ~ 0
A2
Text Label 6250 2250 0    50   ~ 0
A3
Text Label 6250 2350 0    50   ~ 0
A4
Text Label 6250 2450 0    50   ~ 0
A5
Text Label 6250 2550 0    50   ~ 0
A6
Text Label 6250 2650 0    50   ~ 0
A7
Text Label 6250 2750 0    50   ~ 0
A8
Text Label 6250 2850 0    50   ~ 0
A9
Text Label 6250 2950 0    50   ~ 0
A10
Text Label 6250 3050 0    50   ~ 0
A11
Text Label 6250 3150 0    50   ~ 0
A12
Text Label 6250 3250 0    50   ~ 0
A13
Text Label 6250 3350 0    50   ~ 0
A14
Text Label 6250 3450 0    50   ~ 0
A15
$Comp
L power:GND #PWR0154
U 1 1 60D21DC6
P 6200 3950
F 0 "#PWR0154" H 6200 3700 50  0001 C CNN
F 1 "GND" H 6205 3777 50  0000 C CNN
F 2 "" H 6200 3950 50  0001 C CNN
F 3 "" H 6200 3950 50  0001 C CNN
	1    6200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3550 6200 3950
Text Label 7550 1950 0    50   ~ 0
D0
Text Label 7550 2050 0    50   ~ 0
D1
Text Label 7550 2150 0    50   ~ 0
D2
Text Label 7550 2250 0    50   ~ 0
D3
Text Label 7550 2350 0    50   ~ 0
D4
Text Label 7550 2450 0    50   ~ 0
D5
Text Label 7550 2550 0    50   ~ 0
D6
Text Label 7550 2650 0    50   ~ 0
D7
Wire Wire Line
	4250 3550 3850 3550
Wire Wire Line
	7450 2850 7800 2850
Text Label 7550 2850 0    50   ~ 0
~CSRAM~
Text Label 3900 3550 0    50   ~ 0
~CSROM~
Wire Wire Line
	4250 3650 3850 3650
Wire Wire Line
	7450 3050 7800 3050
Wire Wire Line
	7450 3150 7800 3150
Text Label 7600 3150 0    50   ~ 0
~WR~
Text Label 7600 3050 0    50   ~ 0
~RD~
Text Label 3900 3650 0    50   ~ 0
~RD~
$Comp
L power:+5V #PWR0155
U 1 1 60DA2786
P 3750 3350
F 0 "#PWR0155" H 3750 3200 50  0001 C CNN
F 1 "+5V" V 3765 3478 50  0000 L CNN
F 2 "" H 3750 3350 50  0001 C CNN
F 3 "" H 3750 3350 50  0001 C CNN
	1    3750 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3350 4200 3350
Wire Wire Line
	4250 3450 4200 3450
Wire Wire Line
	4200 3450 4200 3350
Connection ~ 4200 3350
Wire Wire Line
	4200 3350 3750 3350
$Comp
L Device:C C?
U 1 1 60DE2F4B
P 7800 4900
AR Path="/60CCD98C/60DE2F4B" Ref="C?"  Part="1" 
AR Path="/60D07BFE/60DE2F4B" Ref="C17"  Part="1" 
F 0 "C17" H 7915 4946 50  0000 L CNN
F 1 "100n" H 7915 4855 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7838 4750 50  0001 C CNN
F 3 "~" H 7800 4900 50  0001 C CNN
	1    7800 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60DE2F51
P 7800 4650
AR Path="/60CCD98C/60DE2F51" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60DE2F51" Ref="#PWR0156"  Part="1" 
F 0 "#PWR0156" H 7800 4500 50  0001 C CNN
F 1 "+5V" H 7815 4823 50  0000 C CNN
F 2 "" H 7800 4650 50  0001 C CNN
F 3 "" H 7800 4650 50  0001 C CNN
	1    7800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DE2F57
P 7800 5150
AR Path="/60CCD98C/60DE2F57" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60DE2F57" Ref="#PWR0157"  Part="1" 
F 0 "#PWR0157" H 7800 4900 50  0001 C CNN
F 1 "GND" H 7805 4977 50  0000 C CNN
F 2 "" H 7800 5150 50  0001 C CNN
F 3 "" H 7800 5150 50  0001 C CNN
	1    7800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4650 7800 4750
Wire Wire Line
	7800 5050 7800 5150
$Comp
L Device:C C?
U 1 1 60DE4F1E
P 8500 4900
AR Path="/60CCD98C/60DE4F1E" Ref="C?"  Part="1" 
AR Path="/60D07BFE/60DE4F1E" Ref="C18"  Part="1" 
F 0 "C18" H 8615 4946 50  0000 L CNN
F 1 "100n" H 8615 4855 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8538 4750 50  0001 C CNN
F 3 "~" H 8500 4900 50  0001 C CNN
	1    8500 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60DE4F24
P 8500 4650
AR Path="/60CCD98C/60DE4F24" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60DE4F24" Ref="#PWR0158"  Part="1" 
F 0 "#PWR0158" H 8500 4500 50  0001 C CNN
F 1 "+5V" H 8515 4823 50  0000 C CNN
F 2 "" H 8500 4650 50  0001 C CNN
F 3 "" H 8500 4650 50  0001 C CNN
	1    8500 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60DE4F2A
P 8500 5150
AR Path="/60CCD98C/60DE4F2A" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60DE4F2A" Ref="#PWR0159"  Part="1" 
F 0 "#PWR0159" H 8500 4900 50  0001 C CNN
F 1 "GND" H 8505 4977 50  0000 C CNN
F 2 "" H 8500 5150 50  0001 C CNN
F 3 "" H 8500 5150 50  0001 C CNN
	1    8500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4650 8500 4750
Wire Wire Line
	8500 5050 8500 5150
$Comp
L mylib:MK48T12 U10
U 1 1 60F390E4
P 2300 2850
F 0 "U10" H 2450 4100 50  0000 C CNN
F 1 "MK48T12" H 2600 4000 50  0000 C CNN
F 2 "Housings_DIP:DIP-24_W15.24mm_LongPads" H 2300 2850 50  0001 C CNN
F 3 "" H 2300 2850 50  0001 C CNN
	1    2300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1950 1450 1950
Wire Wire Line
	1700 2050 1450 2050
Wire Wire Line
	1700 2150 1450 2150
Wire Wire Line
	1700 2250 1450 2250
Wire Wire Line
	1700 2350 1450 2350
Wire Wire Line
	1700 2450 1450 2450
Wire Wire Line
	1700 2550 1450 2550
Wire Wire Line
	1700 2650 1450 2650
Wire Wire Line
	1700 2750 1450 2750
Wire Wire Line
	1700 2850 1450 2850
Wire Wire Line
	1700 2950 1450 2950
Text Label 1500 1950 0    50   ~ 0
A0
Text Label 1500 2050 0    50   ~ 0
A1
Text Label 1500 2150 0    50   ~ 0
A2
Text Label 1500 2250 0    50   ~ 0
A3
Text Label 1500 2350 0    50   ~ 0
A4
Text Label 1500 2450 0    50   ~ 0
A5
Text Label 1500 2550 0    50   ~ 0
A6
Text Label 1500 2650 0    50   ~ 0
A7
Text Label 1500 2750 0    50   ~ 0
A8
Text Label 1500 2850 0    50   ~ 0
A9
Text Label 1500 2950 0    50   ~ 0
A10
Wire Wire Line
	2900 1950 3150 1950
Wire Wire Line
	2900 2050 3150 2050
Wire Wire Line
	2900 2150 3150 2150
Wire Wire Line
	2900 2250 3150 2250
Wire Wire Line
	2900 2350 3150 2350
Wire Wire Line
	2900 2450 3150 2450
Wire Wire Line
	2900 2550 3150 2550
Wire Wire Line
	2900 2650 3150 2650
Text Label 3000 1950 0    50   ~ 0
D0
Text Label 3000 2050 0    50   ~ 0
D1
Text Label 3000 2150 0    50   ~ 0
D2
Text Label 3000 2250 0    50   ~ 0
D3
Text Label 3000 2350 0    50   ~ 0
D4
Text Label 3000 2450 0    50   ~ 0
D5
Text Label 3000 2550 0    50   ~ 0
D6
Text Label 3000 2650 0    50   ~ 0
D7
$Comp
L power:GND #PWR0162
U 1 1 60F40D9E
P 2300 3850
F 0 "#PWR0162" H 2300 3600 50  0001 C CNN
F 1 "GND" H 2305 3677 50  0000 C CNN
F 2 "" H 2300 3850 50  0001 C CNN
F 3 "" H 2300 3850 50  0001 C CNN
	1    2300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3750 2300 3850
$Comp
L power:+5V #PWR0163
U 1 1 60F445F1
P 2300 1450
F 0 "#PWR0163" H 2300 1300 50  0001 C CNN
F 1 "+5V" H 2315 1623 50  0000 C CNN
F 2 "" H 2300 1450 50  0001 C CNN
F 3 "" H 2300 1450 50  0001 C CNN
	1    2300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1450 2300 1650
Wire Wire Line
	1700 3200 1300 3200
Text Label 1350 3200 0    50   ~ 0
~CSRTC~
Wire Wire Line
	1700 3300 1300 3300
Text Label 1350 3300 0    50   ~ 0
~RD~
Wire Wire Line
	1700 3400 1300 3400
Text Label 1350 3400 0    50   ~ 0
~WR~
$Comp
L Device:C C?
U 1 1 60F4F7A0
P 7100 4900
AR Path="/60CCD98C/60F4F7A0" Ref="C?"  Part="1" 
AR Path="/60D07BFE/60F4F7A0" Ref="C6"  Part="1" 
F 0 "C6" H 7215 4946 50  0000 L CNN
F 1 "100n" H 7215 4855 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7138 4750 50  0001 C CNN
F 3 "~" H 7100 4900 50  0001 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60F4F7A6
P 7100 4650
AR Path="/60CCD98C/60F4F7A6" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60F4F7A6" Ref="#PWR0164"  Part="1" 
F 0 "#PWR0164" H 7100 4500 50  0001 C CNN
F 1 "+5V" H 7115 4823 50  0000 C CNN
F 2 "" H 7100 4650 50  0001 C CNN
F 3 "" H 7100 4650 50  0001 C CNN
	1    7100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60F4F7AC
P 7100 5150
AR Path="/60CCD98C/60F4F7AC" Ref="#PWR?"  Part="1" 
AR Path="/60D07BFE/60F4F7AC" Ref="#PWR0165"  Part="1" 
F 0 "#PWR0165" H 7100 4900 50  0001 C CNN
F 1 "GND" H 7105 4977 50  0000 C CNN
F 2 "" H 7100 5150 50  0001 C CNN
F 3 "" H 7100 5150 50  0001 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4650 7100 4750
Wire Wire Line
	7100 5050 7100 5150
Text GLabel 1100 5950 2    50   UnSpc ~ 0
D0
Text GLabel 1100 6050 2    50   UnSpc ~ 0
D1
Text GLabel 1100 6150 2    50   UnSpc ~ 0
D2
Text GLabel 1100 6250 2    50   UnSpc ~ 0
D3
Text GLabel 1100 6350 2    50   UnSpc ~ 0
D4
Text GLabel 1100 6450 2    50   UnSpc ~ 0
D5
Text GLabel 1100 6550 2    50   UnSpc ~ 0
D6
Text GLabel 1100 6650 2    50   UnSpc ~ 0
D7
Wire Wire Line
	900  5950 1100 5950
Wire Wire Line
	1100 6050 900  6050
Wire Wire Line
	900  6150 1100 6150
Wire Wire Line
	1100 6250 900  6250
Wire Wire Line
	900  6350 1100 6350
Wire Wire Line
	1100 6450 900  6450
Wire Wire Line
	900  6550 1100 6550
Wire Wire Line
	1100 6650 900  6650
Text Label 1100 5950 2    50   ~ 0
D0
Text Label 1100 6050 2    50   ~ 0
D1
Text Label 1100 6150 2    50   ~ 0
D2
Text Label 1100 6250 2    50   ~ 0
D3
Text Label 1100 6350 2    50   ~ 0
D4
Text Label 1100 6450 2    50   ~ 0
D5
Text Label 1100 6550 2    50   ~ 0
D6
Text Label 1100 6650 2    50   ~ 0
D7
Wire Wire Line
	1450 5950 1650 5950
Wire Wire Line
	1450 6050 1650 6050
Wire Wire Line
	1450 6150 1650 6150
Wire Wire Line
	1450 6250 1650 6250
Wire Wire Line
	1450 6350 1650 6350
Wire Wire Line
	1450 6450 1650 6450
Text Label 1500 5950 0    50   ~ 0
A0
Text Label 1500 6050 0    50   ~ 0
A1
Text Label 1500 6150 0    50   ~ 0
A2
Text Label 1500 6250 0    50   ~ 0
A3
Text Label 1500 6350 0    50   ~ 0
A4
Text Label 1500 6450 0    50   ~ 0
A5
Text Label 1500 6550 0    50   ~ 0
A6
Text Label 1500 6650 0    50   ~ 0
A7
Text Label 1500 6750 0    50   ~ 0
A8
Text Label 1500 6850 0    50   ~ 0
A9
Text Label 1500 6950 0    50   ~ 0
A10
Text Label 1500 7050 0    50   ~ 0
A11
Text Label 1500 7150 0    50   ~ 0
A12
Text Label 1500 7250 0    50   ~ 0
A13
Text Label 1500 7350 0    50   ~ 0
A14
Text Label 1500 7450 0    50   ~ 0
A15
Text GLabel 1650 5950 2    50   UnSpc ~ 0
A0
Text GLabel 1650 6050 2    50   UnSpc ~ 0
A1
Text GLabel 1650 6150 2    50   UnSpc ~ 0
A2
Text GLabel 1650 6250 2    50   UnSpc ~ 0
A3
Text GLabel 1650 6350 2    50   UnSpc ~ 0
A4
Text GLabel 1650 6450 2    50   UnSpc ~ 0
A5
Text GLabel 1650 6550 2    50   UnSpc ~ 0
A6
Text GLabel 1650 6650 2    50   UnSpc ~ 0
A7
Text GLabel 1650 6750 2    50   UnSpc ~ 0
A8
Text GLabel 1650 6850 2    50   UnSpc ~ 0
A9
Text GLabel 1650 6950 2    50   UnSpc ~ 0
A10
Text GLabel 1650 7050 2    50   UnSpc ~ 0
A11
Text GLabel 1650 7150 2    50   UnSpc ~ 0
A12
Text GLabel 1650 7250 2    50   UnSpc ~ 0
A13
Text GLabel 1650 7350 2    50   UnSpc ~ 0
A14
Text GLabel 1650 7450 2    50   UnSpc ~ 0
A15
Wire Wire Line
	1450 6550 1650 6550
Wire Wire Line
	1450 6650 1650 6650
Wire Wire Line
	1450 6750 1650 6750
Wire Wire Line
	1450 6850 1650 6850
Wire Wire Line
	1450 6950 1650 6950
Wire Wire Line
	1450 7050 1650 7050
Wire Wire Line
	1450 7150 1650 7150
Wire Wire Line
	1450 7250 1650 7250
Wire Wire Line
	1450 7350 1650 7350
Wire Wire Line
	1450 7450 1650 7450
Text Label 2250 6700 0    50   ~ 0
~CSRAM~
Text Label 2250 6850 0    50   ~ 0
~CSROM~
Text Label 2250 7150 0    50   ~ 0
~WR~
Text Label 2250 7300 0    50   ~ 0
~RD~
Text GLabel 2550 7150 2    50   UnSpc ~ 0
~WR~
Text GLabel 2550 7300 2    50   UnSpc ~ 0
~RD~
Text Label 2250 7450 0    50   ~ 0
~CSRTC~
Text GLabel 2550 6700 2    50   UnSpc ~ 0
~CSRAM~
Text GLabel 2550 6850 2    50   UnSpc ~ 0
~CSROM~
Text GLabel 2550 7450 2    50   UnSpc ~ 0
~CSRTC~
Wire Wire Line
	2550 6700 2250 6700
Wire Wire Line
	2250 6850 2550 6850
Wire Wire Line
	2250 7150 2550 7150
Wire Wire Line
	2550 7300 2250 7300
Wire Wire Line
	2250 7450 2550 7450
$EndSCHEMATC
