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
L Amplifier_Operational:TL072 U1
U 1 1 607DC67F
P 3950 1800
F 0 "U1" H 3950 2167 50  0000 C CNN
F 1 "TL072" H 3950 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 3950 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3950 1800 50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 607DF45D
P 5600 1700
F 0 "U1" H 5600 2067 50  0000 C CNN
F 1 "TL072" H 5600 1976 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 5600 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5600 1700 50  0001 C CNN
	2    5600 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 607E1DE0
P 3950 1800
F 0 "U1" H 3908 1846 50  0000 L CNN
F 1 "TL072" H 3908 1755 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 3950 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3950 1800 50  0001 C CNN
	3    3950 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J1
U 1 1 607DD0C9
P 1850 1750
F 0 "J1" H 1882 2075 50  0000 C CNN
F 1 "AudioJack2" H 1882 1984 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1850 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 607DEA99
P 3850 1200
F 0 "#PWR0101" H 3850 1050 50  0001 C CNN
F 1 "+12V" H 3865 1373 50  0000 C CNN
F 2 "" H 3850 1200 50  0001 C CNN
F 3 "" H 3850 1200 50  0001 C CNN
	1    3850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0102
U 1 1 607DF565
P 3850 2400
F 0 "#PWR0102" H 3850 2500 50  0001 C CNN
F 1 "-12V" H 3865 2573 50  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 607E01C7
P 2300 1650
F 0 "#PWR0103" H 2300 1400 50  0001 C CNN
F 1 "GND" V 2305 1522 50  0000 R CNN
F 2 "" H 2300 1650 50  0001 C CNN
F 3 "" H 2300 1650 50  0001 C CNN
	1    2300 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 607E117B
P 2950 1900
F 0 "R1" V 2745 1900 50  0000 C CNN
F 1 "200K" V 2836 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2950 1900 50  0001 C CNN
F 3 "~" H 2950 1900 50  0001 C CNN
	1    2950 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 607E2D8B
P 2500 2200
F 0 "#PWR0104" H 2500 1950 50  0001 C CNN
F 1 "GND" H 2505 2027 50  0000 C CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "" H 2500 2200 50  0001 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US P1
U 1 1 607DDEA6
P 2500 1900
F 0 "P1" H 2433 1854 50  0000 R CNN
F 1 "100K" H 2433 1945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2500 1900 50  0001 C CNN
F 3 "~" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 2200 2500 2050
Wire Wire Line
	2050 1750 2500 1750
Wire Wire Line
	2050 1650 2300 1650
$Comp
L power:GND #PWR0105
U 1 1 607EF36C
P 3450 1700
F 0 "#PWR0105" H 3450 1450 50  0001 C CNN
F 1 "GND" V 3455 1572 50  0000 R CNN
F 2 "" H 3450 1700 50  0001 C CNN
F 3 "" H 3450 1700 50  0001 C CNN
	1    3450 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1700 3650 1700
$Comp
L Connector:AudioJack2 J2
U 1 1 607F5F94
P 1850 2750
F 0 "J2" H 1882 3075 50  0000 C CNN
F 1 "AudioJack2" H 1882 2984 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1850 2750 50  0001 C CNN
F 3 "~" H 1850 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 607F5F9A
P 2300 2650
F 0 "#PWR0106" H 2300 2400 50  0001 C CNN
F 1 "GND" V 2305 2522 50  0000 R CNN
F 2 "" H 2300 2650 50  0001 C CNN
F 3 "" H 2300 2650 50  0001 C CNN
	1    2300 2650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 607F5FA0
P 2950 2900
F 0 "R2" V 2745 2900 50  0000 C CNN
F 1 "200K" V 2836 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2950 2900 50  0001 C CNN
F 3 "~" H 2950 2900 50  0001 C CNN
	1    2950 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 607F5FA6
P 2500 3200
F 0 "#PWR0107" H 2500 2950 50  0001 C CNN
F 1 "GND" H 2505 3027 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US P2
U 1 1 607F5FAC
P 2500 2900
F 0 "P2" H 2433 2854 50  0000 R CNN
F 1 "100K" H 2433 2945 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2500 2900 50  0001 C CNN
F 3 "~" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 3200 2500 3050
Wire Wire Line
	2050 2750 2500 2750
Wire Wire Line
	2050 2650 2300 2650
$Comp
L Connector:AudioJack2 J3
U 1 1 607FAD72
P 1850 3900
F 0 "J3" H 1882 4225 50  0000 C CNN
F 1 "AudioJack2" H 1882 4134 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1850 3900 50  0001 C CNN
F 3 "~" H 1850 3900 50  0001 C CNN
	1    1850 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 607FAD78
P 2300 3800
F 0 "#PWR0108" H 2300 3550 50  0001 C CNN
F 1 "GND" V 2305 3672 50  0000 R CNN
F 2 "" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0001 C CNN
	1    2300 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 607FAD7E
P 2950 4050
F 0 "R3" V 2745 4050 50  0000 C CNN
F 1 "200K" V 2836 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2950 4050 50  0001 C CNN
F 3 "~" H 2950 4050 50  0001 C CNN
	1    2950 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 607FAD84
P 2500 4350
F 0 "#PWR0109" H 2500 4100 50  0001 C CNN
F 1 "GND" H 2505 4177 50  0000 C CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US P3
U 1 1 607FAD8A
P 2500 4050
F 0 "P3" H 2433 4004 50  0000 R CNN
F 1 "100K" H 2433 4095 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2500 4050 50  0001 C CNN
F 3 "~" H 2500 4050 50  0001 C CNN
	1    2500 4050
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 4350 2500 4200
Wire Wire Line
	2050 3900 2500 3900
Wire Wire Line
	2050 3800 2300 3800
$Comp
L Connector:AudioJack2 J4
U 1 1 607FC89A
P 1850 4850
F 0 "J4" H 1882 5175 50  0000 C CNN
F 1 "AudioJack2" H 1882 5084 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1850 4850 50  0001 C CNN
F 3 "~" H 1850 4850 50  0001 C CNN
	1    1850 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 607FC8A0
P 2300 4750
F 0 "#PWR0110" H 2300 4500 50  0001 C CNN
F 1 "GND" V 2305 4622 50  0000 R CNN
F 2 "" H 2300 4750 50  0001 C CNN
F 3 "" H 2300 4750 50  0001 C CNN
	1    2300 4750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 607FC8A6
P 2950 5000
F 0 "R4" V 2745 5000 50  0000 C CNN
F 1 "200K" V 2836 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2950 5000 50  0001 C CNN
F 3 "~" H 2950 5000 50  0001 C CNN
	1    2950 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 607FC8AC
P 2500 5300
F 0 "#PWR0111" H 2500 5050 50  0001 C CNN
F 1 "GND" H 2505 5127 50  0000 C CNN
F 2 "" H 2500 5300 50  0001 C CNN
F 3 "" H 2500 5300 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US P4
U 1 1 607FC8B2
P 2500 5000
F 0 "P4" H 2433 4954 50  0000 R CNN
F 1 "100K" H 2433 5045 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2500 5000 50  0001 C CNN
F 3 "~" H 2500 5000 50  0001 C CNN
	1    2500 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 5300 2500 5150
Wire Wire Line
	2050 4850 2500 4850
Wire Wire Line
	2050 4750 2300 4750
Wire Wire Line
	2650 5000 2850 5000
Wire Wire Line
	2650 4050 2850 4050
Wire Wire Line
	2650 2900 2850 2900
Wire Wire Line
	2650 1900 2850 1900
Wire Wire Line
	3050 1900 3050 2900
Wire Wire Line
	3050 4050 3050 2900
Connection ~ 3050 2900
Wire Wire Line
	3050 5000 3050 4050
Connection ~ 3050 4050
Wire Wire Line
	3050 1900 3650 1900
Connection ~ 3050 1900
Wire Wire Line
	3850 2400 3850 2100
Wire Wire Line
	3850 1500 3850 1200
$Comp
L Device:R_Small_US R5
U 1 1 6080FD17
P 3850 2900
F 0 "R5" V 3645 2900 50  0000 C CNN
F 1 "200K" V 3736 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3850 2900 50  0001 C CNN
F 3 "~" H 3850 2900 50  0001 C CNN
	1    3850 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 2900 3050 2900
Wire Wire Line
	4250 1800 4250 2900
Wire Wire Line
	4250 2900 3950 2900
$Comp
L Device:R_Small_US R6
U 1 1 608120B5
P 4850 1800
F 0 "R6" V 4645 1800 50  0000 C CNN
F 1 "200K" V 4736 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4850 1800 50  0001 C CNN
F 3 "~" H 4850 1800 50  0001 C CNN
	1    4850 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 60812D74
P 4900 1600
F 0 "#PWR0112" H 4900 1350 50  0001 C CNN
F 1 "GND" V 4905 1472 50  0000 R CNN
F 2 "" H 4900 1600 50  0001 C CNN
F 3 "" H 4900 1600 50  0001 C CNN
	1    4900 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1800 4750 1800
Connection ~ 4250 1800
Wire Wire Line
	4950 1800 5150 1800
$Comp
L Device:R_Small_US R7
U 1 1 608171FB
P 5600 2200
F 0 "R7" V 5395 2200 50  0000 C CNN
F 1 "200K" V 5486 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 5600 2200 50  0001 C CNN
F 3 "~" H 5600 2200 50  0001 C CNN
	1    5600 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1600 5300 1600
Wire Wire Line
	5150 1800 5150 2200
Wire Wire Line
	5150 2200 5500 2200
Connection ~ 5150 1800
Wire Wire Line
	5150 1800 5300 1800
Wire Wire Line
	5700 2200 5900 2200
Wire Wire Line
	5900 2200 5900 1700
$Comp
L Connector:AudioJack2 J6
U 1 1 6081DE11
P 6650 1700
F 0 "J6" H 6470 1683 50  0000 R CNN
F 1 "AudioJack2" H 6470 1774 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6650 1700 50  0001 C CNN
F 3 "~" H 6650 1700 50  0001 C CNN
	1    6650 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 6082B3BD
P 6200 1700
F 0 "R8" V 5995 1700 50  0000 C CNN
F 1 "1K" V 6086 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6200 1700 50  0001 C CNN
F 3 "~" H 6200 1700 50  0001 C CNN
	1    6200 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 1700 5900 1700
Connection ~ 5900 1700
Wire Wire Line
	6300 1700 6450 1700
$Comp
L power:GND #PWR0113
U 1 1 6082D5B2
P 6450 2050
F 0 "#PWR0113" H 6450 1800 50  0001 C CNN
F 1 "GND" H 6455 1877 50  0000 C CNN
F 2 "" H 6450 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2050 6450 1800
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 6083B9EF
P 5750 4050
F 0 "J5" H 5800 4467 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5800 4376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5750 4050 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6083C59C
P 5100 4050
F 0 "#PWR0114" H 5100 3800 50  0001 C CNN
F 1 "GND" H 5105 3877 50  0000 C CNN
F 2 "" H 5100 4050 50  0001 C CNN
F 3 "" H 5100 4050 50  0001 C CNN
	1    5100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6083CECE
P 7850 4050
F 0 "#PWR0115" H 7850 3800 50  0001 C CNN
F 1 "GND" H 7855 3877 50  0000 C CNN
F 2 "" H 7850 4050 50  0001 C CNN
F 3 "" H 7850 4050 50  0001 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0116
U 1 1 6083D924
P 5800 3300
F 0 "#PWR0116" H 5800 3150 50  0001 C CNN
F 1 "+12V" H 5815 3473 50  0000 C CNN
F 2 "" H 5800 3300 50  0001 C CNN
F 3 "" H 5800 3300 50  0001 C CNN
	1    5800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0117
U 1 1 6083E4D9
P 5800 4600
F 0 "#PWR0117" H 5800 4700 50  0001 C CNN
F 1 "-12V" H 5815 4773 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 6083F90D
P 6300 4350
F 0 "D2" V 6254 4430 50  0000 L CNN
F 1 "1N4001" V 6345 4430 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6300 4175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6300 4350 50  0001 C CNN
	1    6300 4350
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 60840A1B
P 6300 3650
F 0 "D1" V 6254 3730 50  0000 L CNN
F 1 "1N4001" V 6345 3730 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6300 3475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6300 3650 50  0001 C CNN
	1    6300 3650
	0    1    1    0   
$EndComp
$Comp
L pspice:C C2
U 1 1 60841D10
P 6850 4350
F 0 "C2" H 7028 4396 50  0000 L CNN
F 1 "C" H 7028 4305 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6850 4350 50  0001 C CNN
F 3 "~" H 6850 4350 50  0001 C CNN
	1    6850 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 608427B6
P 6850 3650
F 0 "C1" H 7028 3696 50  0000 L CNN
F 1 "C" H 7028 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6850 3650 50  0001 C CNN
F 3 "~" H 6850 3650 50  0001 C CNN
	1    6850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 60843D7C
P 7350 3700
F 0 "C3" H 7465 3746 50  0000 L CNN
F 1 "CP1" H 7465 3655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D8.0mm_P5.00mm" H 7350 3700 50  0001 C CNN
F 3 "~" H 7350 3700 50  0001 C CNN
	1    7350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C4
U 1 1 60844B1D
P 7350 4350
F 0 "C4" H 7465 4396 50  0000 L CNN
F 1 "CP1" H 7465 4305 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D8.0mm_P5.00mm" H 7350 4350 50  0001 C CNN
F 3 "~" H 7350 4350 50  0001 C CNN
	1    7350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3950 5550 4050
Wire Wire Line
	5550 4050 5550 4150
Connection ~ 5550 4050
Wire Wire Line
	5100 4050 5550 4050
Wire Wire Line
	6050 3950 6050 4050
Wire Wire Line
	6050 4050 6050 4150
Connection ~ 6050 4050
Wire Wire Line
	5550 4250 5550 4600
Wire Wire Line
	5550 4600 5800 4600
Wire Wire Line
	6050 4250 6050 4600
Wire Wire Line
	6050 4600 5800 4600
Connection ~ 5800 4600
Wire Wire Line
	5550 3850 5550 3300
Wire Wire Line
	5550 3300 5800 3300
Wire Wire Line
	6050 3850 6050 3400
Wire Wire Line
	6050 3300 5800 3300
Connection ~ 5800 3300
Wire Wire Line
	6050 4050 6300 4050
Wire Wire Line
	6050 4600 6300 4600
Wire Wire Line
	7350 4600 7350 4500
Connection ~ 6050 4600
Connection ~ 6850 4600
Wire Wire Line
	6850 4600 7350 4600
Wire Wire Line
	6300 4500 6300 4600
Connection ~ 6300 4600
Wire Wire Line
	6300 4600 6850 4600
Connection ~ 6050 3400
Wire Wire Line
	6050 3400 6050 3300
Connection ~ 6850 3400
Wire Wire Line
	6050 3400 6300 3400
Wire Wire Line
	7350 3400 7350 3550
Wire Wire Line
	6850 3400 7350 3400
Wire Wire Line
	7350 3850 7350 4050
Wire Wire Line
	6850 3900 6850 4050
Connection ~ 6850 4050
Wire Wire Line
	6850 4050 7350 4050
Wire Wire Line
	6850 4100 6850 4050
Wire Wire Line
	6300 4200 6300 4050
Connection ~ 6300 4050
Wire Wire Line
	6300 4050 6850 4050
Wire Wire Line
	6300 3800 6300 4050
Wire Wire Line
	6300 3500 6300 3400
Connection ~ 6300 3400
Wire Wire Line
	6300 3400 6850 3400
Connection ~ 7350 4050
Wire Wire Line
	7350 4050 7350 4200
Wire Wire Line
	7350 4050 7850 4050
$EndSCHEMATC
