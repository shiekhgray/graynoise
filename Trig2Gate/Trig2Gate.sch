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
L Transistor_BJT:2N3904 Q1
U 1 1 5F789DE3
P 2450 2000
F 0 "Q1" H 2640 2046 50  0000 L CNN
F 1 "2N3904" H 2640 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2650 1925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2450 2000 50  0001 L CNN
	1    2450 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5F78A0D1
P 2500 4100
F 0 "Q2" H 2690 4146 50  0000 L CNN
F 1 "2N3904" H 2690 4055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2700 4025 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2500 4100 50  0001 L CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F78AC17
P 1650 2000
F 0 "R1" V 1445 2000 50  0000 C CNN
F 1 "10K" V 1536 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1690 1990 50  0001 C CNN
F 3 "~" H 1650 2000 50  0001 C CNN
	1    1650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F78B519
P 1800 4100
F 0 "R2" V 1595 4100 50  0000 C CNN
F 1 "10K" V 1686 4100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1840 4090 50  0001 C CNN
F 3 "~" H 1800 4100 50  0001 C CNN
	1    1800 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F78BB20
P 2550 1350
F 0 "R3" H 2482 1304 50  0000 R CNN
F 1 "100K" H 2482 1395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2590 1340 50  0001 C CNN
F 3 "~" H 2550 1350 50  0001 C CNN
	1    2550 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F78C178
P 2600 3500
F 0 "R4" H 2532 3454 50  0000 R CNN
F 1 "100K" H 2532 3545 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2640 3490 50  0001 C CNN
F 3 "~" H 2600 3500 50  0001 C CNN
	1    2600 3500
	-1   0    0    1   
$EndComp
$Comp
L Timer:NE555P U1
U 1 1 5F78CA87
P 5100 1850
F 0 "U1" H 5100 2431 50  0000 C CNN
F 1 "NE555P" H 5100 2340 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5750 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 5950 1450 50  0001 C CNN
	1    5100 1850
	1    0    0    -1  
$EndComp
$Comp
L Timer:NE555P U2
U 1 1 5F78D620
P 5100 3950
F 0 "U2" H 5100 4531 50  0000 C CNN
F 1 "NE555P" H 5100 4440 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5750 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 5950 3550 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 1 1 5F78E0A1
P 7450 1850
F 0 "U3" H 7450 2217 50  0000 C CNN
F 1 "TL072" H 7450 2126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7450 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7450 1850 50  0001 C CNN
	1    7450 1850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 3 1 5F78F972
P 7450 1850
F 0 "U3" H 7408 1896 50  0000 L CNN
F 1 "TL072" H 7408 1805 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7450 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7450 1850 50  0001 C CNN
	3    7450 1850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U3
U 2 1 5F791B7A
P 7250 3850
F 0 "U3" H 7250 4217 50  0000 C CNN
F 1 "TL072" H 7250 4126 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7250 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 3850 50  0001 C CNN
	2    7250 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5F79AA48
P 2950 5500
F 0 "#PWR0101" H 2950 5350 50  0001 C CNN
F 1 "+12V" H 2965 5673 50  0000 C CNN
F 2 "" H 2950 5500 50  0001 C CNN
F 3 "" H 2950 5500 50  0001 C CNN
	1    2950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F79BCC3
P 3050 6150
F 0 "#PWR0102" H 3050 5900 50  0001 C CNN
F 1 "GND" H 3055 5977 50  0000 C CNN
F 2 "" H 3050 6150 50  0001 C CNN
F 3 "" H 3050 6150 50  0001 C CNN
	1    3050 6150
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0103
U 1 1 5F79C600
P 2500 6650
F 0 "#PWR0103" H 2500 6750 50  0001 C CNN
F 1 "-12V" H 2515 6823 50  0000 C CNN
F 2 "" H 2500 6650 50  0001 C CNN
F 3 "" H 2500 6650 50  0001 C CNN
	1    2500 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 6300 2250 6450
Wire Wire Line
	2250 6450 2500 6450
Wire Wire Line
	2750 6450 2750 6300
Wire Wire Line
	2500 6650 2500 6450
Connection ~ 2500 6450
Wire Wire Line
	2500 6450 2750 6450
Wire Wire Line
	2750 6200 2750 6100
Wire Wire Line
	2750 6000 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	2750 6100 3050 6100
Wire Wire Line
	3050 6100 3050 6150
Wire Wire Line
	2250 6200 2250 6100
Wire Wire Line
	2250 6100 2250 6000
Connection ~ 2250 6100
Wire Wire Line
	2250 6100 2000 6100
Wire Wire Line
	2000 6100 2000 7050
Wire Wire Line
	2000 7050 3200 7050
Wire Wire Line
	3200 7050 3200 6100
Wire Wire Line
	3200 6100 3050 6100
Connection ~ 3050 6100
Wire Wire Line
	2250 5900 2250 5800
Wire Wire Line
	2250 5800 2500 5800
Wire Wire Line
	2750 5800 2750 5900
Wire Wire Line
	2950 5500 2500 5500
Wire Wire Line
	2500 5500 2500 5800
Connection ~ 2500 5800
Wire Wire Line
	2500 5800 2750 5800
$Comp
L power:GND #PWR0104
U 1 1 5F7A2F6F
P 2600 4550
F 0 "#PWR0104" H 2600 4300 50  0001 C CNN
F 1 "GND" H 2605 4377 50  0000 C CNN
F 2 "" H 2600 4550 50  0001 C CNN
F 3 "" H 2600 4550 50  0001 C CNN
	1    2600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F7A34C5
P 2550 2500
F 0 "#PWR0105" H 2550 2250 50  0001 C CNN
F 1 "GND" H 2555 2327 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0106
U 1 1 5F7A4010
P 2600 3200
F 0 "#PWR0106" H 2600 3050 50  0001 C CNN
F 1 "+12V" H 2615 3373 50  0000 C CNN
F 2 "" H 2600 3200 50  0001 C CNN
F 3 "" H 2600 3200 50  0001 C CNN
	1    2600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5F7A45F4
P 2550 1100
F 0 "#PWR0107" H 2550 950 50  0001 C CNN
F 1 "+12V" H 2565 1273 50  0000 C CNN
F 2 "" H 2550 1100 50  0001 C CNN
F 3 "" H 2550 1100 50  0001 C CNN
	1    2550 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground J1
U 1 1 5F7A595A
P 950 2000
F 0 "J1" H 982 2325 50  0000 C CNN
F 1 "AudioJack2_Ground" H 982 2234 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 2000 50  0001 C CNN
F 3 "~" H 950 2000 50  0001 C CNN
	1    950  2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground J2
U 1 1 5F7A660E
P 1000 4100
F 0 "J2" H 1032 4425 50  0000 C CNN
F 1 "AudioJack2_Ground" H 1032 4334 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1000 4100 50  0001 C CNN
F 3 "~" H 1000 4100 50  0001 C CNN
	1    1000 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground J4
U 1 1 5F7A6CEC
P 9400 2000
F 0 "J4" H 9220 1926 50  0000 R CNN
F 1 "AudioJack2_Ground" H 9220 2017 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 9400 2000 50  0001 C CNN
F 3 "~" H 9400 2000 50  0001 C CNN
	1    9400 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2_Ground J5
U 1 1 5F7A7771
P 9450 3850
F 0 "J5" H 9270 3776 50  0000 R CNN
F 1 "AudioJack2_Ground" H 9270 3867 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 9450 3850 50  0001 C CNN
F 3 "~" H 9450 3850 50  0001 C CNN
	1    9450 3850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F7B3E06
P 950 2350
F 0 "#PWR0108" H 950 2100 50  0001 C CNN
F 1 "GND" H 955 2177 50  0000 C CNN
F 2 "" H 950 2350 50  0001 C CNN
F 3 "" H 950 2350 50  0001 C CNN
	1    950  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2200 950  2350
Wire Wire Line
	1150 2000 1500 2000
Wire Wire Line
	1800 2000 2250 2000
Wire Wire Line
	2550 1500 2550 1650
Wire Wire Line
	2550 1100 2550 1200
Wire Wire Line
	2550 2200 2550 2500
Wire Wire Line
	2600 3200 2600 3350
Wire Wire Line
	2600 3650 2600 3750
Wire Wire Line
	2600 4300 2600 4550
Wire Wire Line
	1950 4100 2300 4100
Wire Wire Line
	1200 4100 1650 4100
$Comp
L power:GND #PWR0109
U 1 1 5F7B953A
P 1000 4450
F 0 "#PWR0109" H 1000 4200 50  0001 C CNN
F 1 "GND" H 1005 4277 50  0000 C CNN
F 2 "" H 1000 4450 50  0001 C CNN
F 3 "" H 1000 4450 50  0001 C CNN
	1    1000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4300 1000 4450
Wire Wire Line
	4600 1650 2550 1650
Connection ~ 2550 1650
Wire Wire Line
	2550 1650 2550 1800
$Comp
L power:GND #PWR0110
U 1 1 5F7BE177
P 5100 2400
F 0 "#PWR0110" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0111
U 1 1 5F7BE548
P 5100 1200
F 0 "#PWR0111" H 5100 1050 50  0001 C CNN
F 1 "+12V" H 5115 1373 50  0000 C CNN
F 2 "" H 5100 1200 50  0001 C CNN
F 3 "" H 5100 1200 50  0001 C CNN
	1    5100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1200 5100 1450
$Comp
L power:+12V #PWR0112
U 1 1 5F7BF72A
P 4300 1950
F 0 "#PWR0112" H 4300 1800 50  0001 C CNN
F 1 "+12V" H 4315 2123 50  0000 C CNN
F 2 "" H 4300 1950 50  0001 C CNN
F 3 "" H 4300 1950 50  0001 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1950 4300 2050
Wire Wire Line
	4300 2050 4600 2050
Wire Wire Line
	5600 1850 5600 2050
$Comp
L Device:C C1
U 1 1 5F7C524D
P 3800 2050
F 0 "C1" H 3915 2096 50  0000 L CNN
F 1 "100n" H 3915 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3838 1900 50  0001 C CNN
F 3 "~" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1850 4550 1850
Wire Wire Line
	4550 1850 4550 1700
Wire Wire Line
	4550 1700 3800 1700
Wire Wire Line
	3800 1700 3800 1900
Wire Wire Line
	3800 2200 3800 2400
Wire Wire Line
	3800 2400 5100 2400
Wire Wire Line
	5100 2250 5100 2400
Connection ~ 5100 2400
$Comp
L Device:R_US R8
U 1 1 5F7CC464
P 5750 2700
F 0 "R8" V 5955 2700 50  0000 C CNN
F 1 "2K2" V 5864 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5790 2690 50  0001 C CNN
F 3 "~" H 5750 2700 50  0001 C CNN
	1    5750 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 5F7CEDE3
P 5400 2700
F 0 "#PWR0113" H 5400 2550 50  0001 C CNN
F 1 "+12V" H 5415 2873 50  0000 C CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5F7CF89D
P 6250 2700
F 0 "RV2" V 6135 2700 50  0000 C CNN
F 1 "1M" V 6044 2700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 6250 2700 50  0001 C CNN
F 3 "~" H 6250 2700 50  0001 C CNN
	1    6250 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 2700 5600 2700
Wire Wire Line
	5900 2700 6100 2700
Wire Wire Line
	6250 2550 6400 2550
Wire Wire Line
	6400 2550 6400 2700
Wire Wire Line
	5600 2050 5900 2050
Wire Wire Line
	6250 2050 6250 2550
Connection ~ 5600 2050
Connection ~ 6250 2550
$Comp
L Device:CP C8
U 1 1 5F7D3EB1
P 5900 2200
F 0 "C8" H 6018 2246 50  0000 L CNN
F 1 "100u" H 6018 2155 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 5938 2050 50  0001 C CNN
F 3 "~" H 5900 2200 50  0001 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
Connection ~ 5900 2050
Wire Wire Line
	5900 2050 6250 2050
Wire Wire Line
	5100 2400 5900 2400
Wire Wire Line
	5900 2400 5900 2350
$Comp
L power:-12V #PWR0114
U 1 1 5F7D6415
P 7350 2300
F 0 "#PWR0114" H 7350 2400 50  0001 C CNN
F 1 "-12V" H 7365 2473 50  0000 C CNN
F 2 "" H 7350 2300 50  0001 C CNN
F 3 "" H 7350 2300 50  0001 C CNN
	1    7350 2300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 5F7D6A1B
P 7350 1350
F 0 "#PWR0115" H 7350 1200 50  0001 C CNN
F 1 "+12V" H 7365 1523 50  0000 C CNN
F 2 "" H 7350 1350 50  0001 C CNN
F 3 "" H 7350 1350 50  0001 C CNN
	1    7350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1650 7150 1750
Wire Wire Line
	7350 1550 7350 1350
Wire Wire Line
	7350 2300 7350 2150
Wire Wire Line
	7150 1950 6950 1950
Wire Wire Line
	6950 1950 6950 2650
Wire Wire Line
	6950 2650 7750 2650
Wire Wire Line
	7750 2650 7750 1850
Wire Wire Line
	9200 1850 9200 2000
$Comp
L power:GND #PWR0116
U 1 1 5F7E343E
P 9650 1600
F 0 "#PWR0116" H 9650 1350 50  0001 C CNN
F 1 "GND" H 9655 1427 50  0000 C CNN
F 2 "" H 9650 1600 50  0001 C CNN
F 3 "" H 9650 1600 50  0001 C CNN
	1    9650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1600 9400 1600
Wire Wire Line
	9400 1600 9400 1800
$Comp
L Device:R_US R11
U 1 1 5F7F197D
P 6450 1650
F 0 "R11" V 6655 1650 50  0000 C CNN
F 1 "100K" V 6564 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6490 1640 50  0001 C CNN
F 3 "~" H 6450 1650 50  0001 C CNN
	1    6450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 5F7F798A
P 6600 1950
F 0 "R12" H 6668 1996 50  0000 L CNN
F 1 "100K" H 6668 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6640 1940 50  0001 C CNN
F 3 "~" H 6600 1950 50  0001 C CNN
	1    6600 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F7F8194
P 6600 2200
F 0 "#PWR0117" H 6600 1950 50  0001 C CNN
F 1 "GND" H 6605 2027 50  0000 C CNN
F 2 "" H 6600 2200 50  0001 C CNN
F 3 "" H 6600 2200 50  0001 C CNN
	1    6600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2200 6600 2100
Wire Wire Line
	6600 1800 6600 1650
Wire Wire Line
	6600 1650 7150 1650
Connection ~ 6600 1650
Wire Wire Line
	6300 1650 5600 1650
$Comp
L power:GND #PWR0118
U 1 1 5F805CE1
P 5100 4450
F 0 "#PWR0118" H 5100 4200 50  0001 C CNN
F 1 "GND" H 5105 4277 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0119
U 1 1 5F8062B2
P 5100 3250
F 0 "#PWR0119" H 5100 3100 50  0001 C CNN
F 1 "+12V" H 5115 3423 50  0000 C CNN
F 2 "" H 5100 3250 50  0001 C CNN
F 3 "" H 5100 3250 50  0001 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F806CE8
P 4000 4150
F 0 "C2" H 4115 4196 50  0000 L CNN
F 1 "100n" H 4115 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4038 4000 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3750 2600 3750
Connection ~ 2600 3750
Wire Wire Line
	2600 3750 2600 3900
$Comp
L power:+12V #PWR0120
U 1 1 5F80D7EA
P 4400 4150
F 0 "#PWR0120" H 4400 4000 50  0001 C CNN
F 1 "+12V" H 4415 4323 50  0000 C CNN
F 2 "" H 4400 4150 50  0001 C CNN
F 3 "" H 4400 4150 50  0001 C CNN
	1    4400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3950 4000 3950
Wire Wire Line
	4000 3950 4000 4000
Wire Wire Line
	4000 4300 4000 4450
Wire Wire Line
	4000 4450 5100 4450
Wire Wire Line
	5100 4350 5100 4450
Connection ~ 5100 4450
Wire Wire Line
	5600 3950 5600 4150
$Comp
L Device:R_POT RV1
U 1 1 5F8181EA
P 5600 5000
F 0 "RV1" V 5485 5000 50  0000 C CNN
F 1 "1M" V 5394 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical_CircularHoles" H 5600 5000 50  0001 C CNN
F 3 "~" H 5600 5000 50  0001 C CNN
	1    5600 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0121
U 1 1 5F819A54
P 4750 5000
F 0 "#PWR0121" H 4750 4850 50  0001 C CNN
F 1 "+12V" H 4765 5173 50  0000 C CNN
F 2 "" H 4750 5000 50  0001 C CNN
F 3 "" H 4750 5000 50  0001 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F81A1F4
P 5150 5000
F 0 "R7" V 5355 5000 50  0000 C CNN
F 1 "2K2" V 5264 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5190 4990 50  0001 C CNN
F 3 "~" H 5150 5000 50  0001 C CNN
	1    5150 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C7
U 1 1 5F81ABDD
P 5450 4450
F 0 "C7" V 5195 4450 50  0000 C CNN
F 1 "100u" V 5286 4450 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 5488 4300 50  0001 C CNN
F 3 "~" H 5450 4450 50  0001 C CNN
	1    5450 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 4450 5100 4450
Wire Wire Line
	5600 4150 5600 4450
Connection ~ 5600 4150
Wire Wire Line
	5600 4450 5600 4850
Connection ~ 5600 4450
Wire Wire Line
	5750 5000 5750 4850
Wire Wire Line
	5750 4850 5600 4850
Connection ~ 5600 4850
Wire Wire Line
	5300 5000 5450 5000
Wire Wire Line
	4750 5000 5000 5000
$Comp
L Device:R_US R9
U 1 1 5F82BE61
P 6050 3750
F 0 "R9" V 6255 3750 50  0000 C CNN
F 1 "100K" V 6164 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6090 3740 50  0001 C CNN
F 3 "~" H 6050 3750 50  0001 C CNN
	1    6050 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F82C617
P 6200 4050
F 0 "R10" H 6268 4096 50  0000 L CNN
F 1 "100K" H 6268 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6240 4040 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F82D0F4
P 6200 4350
F 0 "#PWR0122" H 6200 4100 50  0001 C CNN
F 1 "GND" H 6205 4177 50  0000 C CNN
F 2 "" H 6200 4350 50  0001 C CNN
F 3 "" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3750 5900 3750
Wire Wire Line
	6200 3750 6200 3900
Wire Wire Line
	6200 4200 6200 4350
Wire Wire Line
	6950 3750 6200 3750
Connection ~ 6200 3750
Wire Wire Line
	6950 3950 6950 4200
Wire Wire Line
	6950 4200 7550 4200
Wire Wire Line
	7550 4200 7550 3850
$Comp
L Device:R_US R14
U 1 1 5F841309
P 8450 1850
F 0 "R14" V 8655 1850 50  0000 C CNN
F 1 "2K2" V 8564 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8490 1840 50  0001 C CNN
F 3 "~" H 8450 1850 50  0001 C CNN
	1    8450 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 5F84225E
P 8400 3850
F 0 "R13" V 8605 3850 50  0000 C CNN
F 1 "2K2" V 8514 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8440 3840 50  0001 C CNN
F 3 "~" H 8400 3850 50  0001 C CNN
	1    8400 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F847D91
P 9700 3350
F 0 "#PWR0123" H 9700 3100 50  0001 C CNN
F 1 "GND" H 9705 3177 50  0000 C CNN
F 2 "" H 9700 3350 50  0001 C CNN
F 3 "" H 9700 3350 50  0001 C CNN
	1    9700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3850 7550 3850
Connection ~ 7550 3850
Wire Wire Line
	8550 3850 9250 3850
Wire Wire Line
	9700 3350 9450 3350
Wire Wire Line
	9450 3350 9450 3650
Wire Wire Line
	8300 1850 7750 1850
Connection ~ 7750 1850
Wire Wire Line
	8600 1850 9200 1850
$Comp
L Device:CP C3
U 1 1 5F865F5A
P 4000 6100
F 0 "C3" H 4118 6146 50  0000 L CNN
F 1 "100u" H 4118 6055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 4038 5950 50  0001 C CNN
F 3 "~" H 4000 6100 50  0001 C CNN
	1    4000 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 5F8675BD
P 4000 6600
F 0 "C4" H 4118 6646 50  0000 L CNN
F 1 "100u" H 4118 6555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 4038 6450 50  0001 C CNN
F 3 "~" H 4000 6600 50  0001 C CNN
	1    4000 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F867B20
P 4450 6100
F 0 "C5" H 4565 6146 50  0000 L CNN
F 1 "100n" H 4565 6055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4488 5950 50  0001 C CNN
F 3 "~" H 4450 6100 50  0001 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F8681C7
P 4450 6600
F 0 "C6" H 4565 6646 50  0000 L CNN
F 1 "100n" H 4565 6555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4488 6450 50  0001 C CNN
F 3 "~" H 4450 6600 50  0001 C CNN
	1    4450 6600
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0124
U 1 1 5F868822
P 4250 6900
F 0 "#PWR0124" H 4250 7000 50  0001 C CNN
F 1 "-12V" H 4265 7073 50  0000 C CNN
F 2 "" H 4250 6900 50  0001 C CNN
F 3 "" H 4250 6900 50  0001 C CNN
	1    4250 6900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F868BB5
P 4900 6450
F 0 "#PWR0125" H 4900 6200 50  0001 C CNN
F 1 "GND" H 4905 6277 50  0000 C CNN
F 2 "" H 4900 6450 50  0001 C CNN
F 3 "" H 4900 6450 50  0001 C CNN
	1    4900 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0126
U 1 1 5F869144
P 4250 5700
F 0 "#PWR0126" H 4250 5550 50  0001 C CNN
F 1 "+12V" H 4265 5873 50  0000 C CNN
F 2 "" H 4250 5700 50  0001 C CNN
F 3 "" H 4250 5700 50  0001 C CNN
	1    4250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5950 4250 5950
Wire Wire Line
	4250 5700 4250 5950
Connection ~ 4250 5950
Wire Wire Line
	4250 5950 4450 5950
Wire Wire Line
	4000 6250 4250 6250
Wire Wire Line
	4000 6450 4250 6450
Wire Wire Line
	4000 6750 4250 6750
Wire Wire Line
	4250 6900 4250 6750
Connection ~ 4250 6750
Wire Wire Line
	4250 6750 4450 6750
Wire Wire Line
	4250 6450 4250 6350
Connection ~ 4250 6450
Wire Wire Line
	4250 6450 4450 6450
Connection ~ 4250 6250
Wire Wire Line
	4250 6250 4450 6250
Wire Wire Line
	4250 6350 4900 6350
Wire Wire Line
	4900 6350 4900 6450
Connection ~ 4250 6350
Wire Wire Line
	4250 6350 4250 6250
$Comp
L Diode:1N4001 D1
U 1 1 5F881DC5
P 3450 6100
F 0 "D1" V 3404 6180 50  0000 L CNN
F 1 "1N4001" V 3495 6180 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3450 5925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3450 6100 50  0001 C CNN
	1    3450 6100
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5F882F6B
P 3450 6600
F 0 "D2" V 3404 6680 50  0000 L CNN
F 1 "1N4001" V 3495 6680 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3450 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3450 6600 50  0001 C CNN
	1    3450 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F8B2ADC
P 3750 5950
F 0 "R5" V 3955 5950 50  0000 C CNN
F 1 "68" V 3864 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3790 5940 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F8B3254
P 3750 6750
F 0 "R6" V 3955 6750 50  0000 C CNN
F 1 "68" V 3864 6750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3790 6740 50  0001 C CNN
F 3 "~" H 3750 6750 50  0001 C CNN
	1    3750 6750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 6750 4000 6750
Connection ~ 4000 6750
Wire Wire Line
	3450 6750 3600 6750
Wire Wire Line
	3450 6450 4000 6450
Connection ~ 4000 6450
Wire Wire Line
	3450 6250 4000 6250
Connection ~ 4000 6250
Wire Wire Line
	3450 5950 3600 5950
Wire Wire Line
	3900 5950 4000 5950
Connection ~ 4000 5950
Text GLabel 1300 2000 1    50   Input ~ 0
T1
Text GLabel 1500 4100 1    50   Input ~ 0
T2
Text GLabel 8900 1850 1    50   Input ~ 0
G1
Text GLabel 8800 3850 1    50   Input ~ 0
G2
Text GLabel 6250 2050 1    50   Input ~ 0
V1
Text GLabel 5600 4450 2    50   Input ~ 0
V2
Wire Wire Line
	6800 5550 6800 5850
Wire Wire Line
	6700 5650 6700 5850
Wire Wire Line
	6600 5650 6600 5850
Wire Wire Line
	6500 5650 6500 5850
Wire Wire Line
	6400 5650 6400 5850
Wire Wire Line
	6300 5650 6300 5850
Wire Wire Line
	6200 5650 6200 5850
Wire Wire Line
	6100 5600 6100 5850
Text GLabel 6700 5650 1    50   Input ~ 0
G2
Text GLabel 6600 5650 1    50   Input ~ 0
V2
Text GLabel 6500 5650 1    50   Input ~ 0
T2
Text GLabel 6400 5650 1    50   Input ~ 0
G1
Text GLabel 6300 5650 1    50   Input ~ 0
V1
Text GLabel 6200 5650 1    50   Input ~ 0
T1
$Comp
L power:GND #PWR0128
U 1 1 5F8E9395
P 6800 5550
F 0 "#PWR0128" H 6800 5300 50  0001 C CNN
F 1 "GND" H 6805 5377 50  0000 C CNN
F 2 "" H 6800 5550 50  0001 C CNN
F 3 "" H 6800 5550 50  0001 C CNN
	1    6800 5550
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0127
U 1 1 5F8E812D
P 6100 5600
F 0 "#PWR0127" H 6100 5450 50  0001 C CNN
F 1 "+12V" H 6115 5773 50  0000 C CNN
F 2 "" H 6100 5600 50  0001 C CNN
F 3 "" H 6100 5600 50  0001 C CNN
	1    6100 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J6
U 1 1 5F8E37AB
P 6400 6050
F 0 "J6" V 6327 5978 50  0000 C CNN
F 1 "Conn_01x08_Male" V 6236 5978 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6400 6050 50  0001 C CNN
F 3 "~" H 6400 6050 50  0001 C CNN
	1    6400 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 5550 8050 5850
Wire Wire Line
	7950 5650 7950 5850
Wire Wire Line
	7850 5650 7850 5850
Wire Wire Line
	7750 5650 7750 5850
Wire Wire Line
	7650 5650 7650 5850
Wire Wire Line
	7550 5650 7550 5850
Wire Wire Line
	7450 5650 7450 5850
Wire Wire Line
	7350 5600 7350 5850
Text GLabel 7950 5650 1    50   Input ~ 0
G2
Text GLabel 7850 5650 1    50   Input ~ 0
V2
Text GLabel 7750 5650 1    50   Input ~ 0
T2
Text GLabel 7650 5650 1    50   Input ~ 0
G1
Text GLabel 7550 5650 1    50   Input ~ 0
V1
Text GLabel 7450 5650 1    50   Input ~ 0
T1
$Comp
L power:GND #PWR0129
U 1 1 5F93C892
P 8050 5550
F 0 "#PWR0129" H 8050 5300 50  0001 C CNN
F 1 "GND" H 8055 5377 50  0000 C CNN
F 2 "" H 8050 5550 50  0001 C CNN
F 3 "" H 8050 5550 50  0001 C CNN
	1    8050 5550
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0130
U 1 1 5F93C898
P 7350 5600
F 0 "#PWR0130" H 7350 5450 50  0001 C CNN
F 1 "+12V" H 7365 5773 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J7
U 1 1 5F93C89E
P 7650 6050
F 0 "J7" V 7577 5978 50  0000 C CNN
F 1 "Conn_01x08_Male" V 7486 5978 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7650 6050 50  0001 C CNN
F 3 "~" H 7650 6050 50  0001 C CNN
	1    7650 6050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J3
U 1 1 5F944FA3
P 2450 6100
F 0 "J3" H 2500 6517 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 2500 6426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 2450 6100 50  0001 C CNN
F 3 "~" H 2450 6100 50  0001 C CNN
	1    2450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4150 4400 4150
Wire Wire Line
	5100 3250 5100 3550
$EndSCHEMATC
