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
U 1 1 622D92B3
P 3300 3600
F 0 "Q1" H 3490 3646 50  0000 L CNN
F 1 "2N3904" H 3490 3555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 3500 3525 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 3300 3600 50  0001 L CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 622E4B52
P 1200 7000
F 0 "J1" H 1250 7417 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1250 7326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1200 7000 50  0001 C CNN
F 3 "~" H 1200 7000 50  0001 C CNN
	1    1200 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 622E714D
P 4200 1700
F 0 "R7" H 4270 1746 50  0000 L CNN
F 1 "10K" H 4270 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4130 1700 50  0001 C CNN
F 3 "~" H 4200 1700 50  0001 C CNN
	1    4200 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 622E9A45
P 4800 1700
F 0 "R10" H 4870 1746 50  0000 L CNN
F 1 "10K" H 4870 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4730 1700 50  0001 C CNN
F 3 "~" H 4800 1700 50  0001 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 622EA88C
P 4500 2750
F 0 "R8" H 4570 2796 50  0000 L CNN
F 1 "22K" H 4570 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 2750 50  0001 C CNN
F 3 "~" H 4500 2750 50  0001 C CNN
	1    4500 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT Trim1
U 1 1 622F14BD
P 2050 4750
F 0 "Trim1" H 1981 4796 50  0000 R CNN
F 1 "100K" H 1981 4705 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 2050 4750 50  0001 C CNN
F 3 "~" H 2050 4750 50  0001 C CNN
	1    2050 4750
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0101
U 1 1 62300896
P 1250 7450
F 0 "#PWR0101" H 1250 7550 50  0001 C CNN
F 1 "-12V" H 1265 7623 50  0000 C CNN
F 2 "" H 1250 7450 50  0001 C CNN
F 3 "" H 1250 7450 50  0001 C CNN
	1    1250 7450
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 62302961
P 1250 6400
F 0 "#PWR0102" H 1250 6250 50  0001 C CNN
F 1 "+12V" H 1265 6573 50  0000 C CNN
F 2 "" H 1250 6400 50  0001 C CNN
F 3 "" H 1250 6400 50  0001 C CNN
	1    1250 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 62302E32
P 1950 7050
F 0 "#PWR0103" H 1950 6800 50  0001 C CNN
F 1 "GND" H 1955 6877 50  0000 C CNN
F 2 "" H 1950 7050 50  0001 C CNN
F 3 "" H 1950 7050 50  0001 C CNN
	1    1950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6900 1500 7000
Wire Wire Line
	1500 7100 1500 7000
Connection ~ 1500 7000
Wire Wire Line
	1500 7000 1950 7000
Wire Wire Line
	1950 7000 1950 7050
Wire Wire Line
	1000 6900 1000 7000
Wire Wire Line
	1000 7100 1000 7000
Connection ~ 1000 7000
$Comp
L power:GND #PWR0104
U 1 1 6230379B
P 750 7000
F 0 "#PWR0104" H 750 6750 50  0001 C CNN
F 1 "GND" H 755 6827 50  0000 C CNN
F 2 "" H 750 7000 50  0001 C CNN
F 3 "" H 750 7000 50  0001 C CNN
	1    750  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7000 1000 7000
Wire Wire Line
	1000 7200 1000 7300
Wire Wire Line
	1000 7300 1250 7300
Wire Wire Line
	1500 7300 1500 7200
Wire Wire Line
	1250 7450 1250 7300
Connection ~ 1250 7300
Wire Wire Line
	1250 7300 1500 7300
Wire Wire Line
	1000 6800 1000 6600
Wire Wire Line
	1000 6600 1250 6600
Wire Wire Line
	1500 6600 1500 6800
Wire Wire Line
	1250 6400 1250 6600
Connection ~ 1250 6600
Wire Wire Line
	1250 6600 1500 6600
$Comp
L Device:R R5
U 1 1 6230891D
P 3250 2200
F 0 "R5" V 3043 2200 50  0000 C CNN
F 1 "220K" V 3134 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 2200 50  0001 C CNN
F 3 "~" H 3250 2200 50  0001 C CNN
	1    3250 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 62308EE0
P 3650 2450
F 0 "R6" H 3580 2404 50  0000 R CNN
F 1 "1K" H 3580 2495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3580 2450 50  0001 C CNN
F 3 "~" H 3650 2450 50  0001 C CNN
	1    3650 2450
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 6230BAFB
P 4500 1450
F 0 "#PWR0105" H 4500 1300 50  0001 C CNN
F 1 "+12V" H 4515 1623 50  0000 C CNN
F 2 "" H 4500 1450 50  0001 C CNN
F 3 "" H 4500 1450 50  0001 C CNN
	1    4500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1550 4500 1550
Wire Wire Line
	4500 1450 4500 1550
Connection ~ 4500 1550
Wire Wire Line
	4500 1550 4800 1550
Wire Wire Line
	4200 1850 4200 1900
Wire Wire Line
	4800 1850 4800 1900
Wire Wire Line
	4200 2400 4500 2400
Wire Wire Line
	4500 2600 4500 2400
Connection ~ 4500 2400
Wire Wire Line
	4500 2400 4800 2400
$Comp
L power:GND #PWR0106
U 1 1 6231A88C
P 5250 2200
F 0 "#PWR0106" H 5250 1950 50  0001 C CNN
F 1 "GND" H 5255 2027 50  0000 C CNN
F 2 "" H 5250 2200 50  0001 C CNN
F 3 "" H 5250 2200 50  0001 C CNN
	1    5250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2200 5250 2200
$Comp
L Device:R R11
U 1 1 62320D7F
P 5850 1700
F 0 "R11" V 5643 1700 50  0000 C CNN
F 1 "10K" V 5734 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 1700 50  0001 C CNN
F 3 "~" H 5850 1700 50  0001 C CNN
	1    5850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 62321712
P 5850 1900
F 0 "R12" V 5643 1900 50  0000 C CNN
F 1 "10K" V 5734 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 1900 5700 1900
Connection ~ 4800 1900
Wire Wire Line
	4800 1900 4800 2000
Wire Wire Line
	6000 1900 6200 1900
Wire Wire Line
	6000 1700 6200 1700
Wire Wire Line
	4200 1900 4050 1900
Wire Wire Line
	4050 1900 4050 1150
Wire Wire Line
	4050 1150 5400 1150
Wire Wire Line
	5400 1150 5400 1700
Wire Wire Line
	5400 1700 5700 1700
Connection ~ 4200 1900
Wire Wire Line
	4200 1900 4200 2000
Wire Wire Line
	3400 2200 3650 2200
Wire Wire Line
	3650 2300 3650 2200
Connection ~ 3650 2200
Wire Wire Line
	3650 2200 3900 2200
$Comp
L power:GND #PWR0107
U 1 1 62328FCB
P 3650 2700
F 0 "#PWR0107" H 3650 2450 50  0001 C CNN
F 1 "GND" H 3655 2527 50  0000 C CNN
F 2 "" H 3650 2700 50  0001 C CNN
F 3 "" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2700 3650 2600
$Comp
L Connector:AudioJack2_SwitchT In1
U 1 1 6232B108
P 2550 2200
F 0 "In1" H 2371 2133 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 2371 2224 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 2550 2200 50  0001 C CNN
F 3 "~" H 2550 2200 50  0001 C CNN
	1    2550 2200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 62330270
P 2750 2450
F 0 "#PWR0108" H 2750 2200 50  0001 C CNN
F 1 "GND" H 2755 2277 50  0000 C CNN
F 2 "" H 2750 2450 50  0001 C CNN
F 3 "" H 2750 2450 50  0001 C CNN
	1    2750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2450 2750 2300
Wire Wire Line
	2750 2200 3100 2200
$Comp
L Device:R R14
U 1 1 6233523C
P 6600 1200
F 0 "R14" V 6393 1200 50  0000 C CNN
F 1 "220K" V 6484 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 1200 50  0001 C CNN
F 3 "~" H 6600 1200 50  0001 C CNN
	1    6600 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 1200 6200 1200
Wire Wire Line
	6200 1200 6200 1700
Connection ~ 6200 1700
Wire Wire Line
	6200 1700 6350 1700
Wire Wire Line
	6750 1200 7050 1200
Wire Wire Line
	7050 1200 7050 1800
Wire Wire Line
	7050 1800 6950 1800
$Comp
L Device:R R13
U 1 1 62337182
P 6200 2250
F 0 "R13" H 6130 2204 50  0000 R CNN
F 1 "220K" H 6130 2295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 2250 50  0001 C CNN
F 3 "~" H 6200 2250 50  0001 C CNN
	1    6200 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 62337843
P 6200 2550
F 0 "#PWR0109" H 6200 2300 50  0001 C CNN
F 1 "GND" H 6205 2377 50  0000 C CNN
F 2 "" H 6200 2550 50  0001 C CNN
F 3 "" H 6200 2550 50  0001 C CNN
	1    6200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2550 6200 2400
Wire Wire Line
	6200 2100 6200 1900
Connection ~ 6200 1900
Wire Wire Line
	6200 1900 6350 1900
$Comp
L Device:R R15
U 1 1 62339E46
P 7350 1800
F 0 "R15" V 7557 1800 50  0000 C CNN
F 1 "1K" V 7466 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 1800 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
	1    7350 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1800 7050 1800
Connection ~ 7050 1800
$Comp
L Connector:AudioJack2_SwitchT Out1
U 1 1 6233DCEC
P 8000 1800
F 0 "Out1" H 7820 1733 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 7820 1824 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 1800 7500 1800
$Comp
L power:GND #PWR0110
U 1 1 62341E2E
P 7800 2100
F 0 "#PWR0110" H 7800 1850 50  0001 C CNN
F 1 "GND" H 7805 1927 50  0000 C CNN
F 2 "" H 7800 2100 50  0001 C CNN
F 3 "" H 7800 2100 50  0001 C CNN
	1    7800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2100 7800 1900
$Comp
L Device:R R9
U 1 1 6234BF31
P 4500 4250
F 0 "R9" H 4430 4204 50  0000 R CNN
F 1 "10K" H 4430 4295 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4250 50  0001 C CNN
F 3 "~" H 4500 4250 50  0001 C CNN
	1    4500 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6234C9F8
P 3750 3350
F 0 "#PWR0111" H 3750 3100 50  0001 C CNN
F 1 "GND" H 3755 3177 50  0000 C CNN
F 2 "" H 3750 3350 50  0001 C CNN
F 3 "" H 3750 3350 50  0001 C CNN
	1    3750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3350 3750 3200
Wire Wire Line
	3750 3200 3400 3200
Wire Wire Line
	3400 3200 3400 3400
Wire Wire Line
	3400 3800 4500 3800
Wire Wire Line
	4500 3800 4500 4100
Connection ~ 4500 3800
$Comp
L power:-12V #PWR0112
U 1 1 62352873
P 4500 4700
F 0 "#PWR0112" H 4500 4800 50  0001 C CNN
F 1 "-12V" H 4515 4873 50  0000 C CNN
F 2 "" H 4500 4700 50  0001 C CNN
F 3 "" H 4500 4700 50  0001 C CNN
	1    4500 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 4700 4500 4400
$Comp
L Device:R R4
U 1 1 62357760
P 2700 4750
F 0 "R4" V 2493 4750 50  0000 C CNN
F 1 "22K" V 2584 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2630 4750 50  0001 C CNN
F 3 "~" H 2700 4750 50  0001 C CNN
	1    2700 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 3600 2850 4750
Wire Wire Line
	3100 3600 2850 3600
Wire Wire Line
	2200 4750 2550 4750
$Comp
L power:+12V #PWR0113
U 1 1 62365FCE
P 2050 4550
F 0 "#PWR0113" H 2050 4400 50  0001 C CNN
F 1 "+12V" H 2065 4723 50  0000 C CNN
F 2 "" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0114
U 1 1 62366B5C
P 2050 4950
F 0 "#PWR0114" H 2050 5050 50  0001 C CNN
F 1 "-12V" H 2065 5123 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 4950 2050 4900
Wire Wire Line
	2050 4600 2050 4550
$Comp
L power:-12V #PWR0117
U 1 1 6237F873
P 1550 4000
F 0 "#PWR0117" H 1550 4100 50  0001 C CNN
F 1 "-12V" H 1565 4173 50  0000 C CNN
F 2 "" H 1550 4000 50  0001 C CNN
F 3 "" H 1550 4000 50  0001 C CNN
	1    1550 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 4000 1550 3900
Wire Wire Line
	4500 2900 4500 3800
Wire Wire Line
	1550 3200 1550 3300
$Comp
L power:+12V #PWR0116
U 1 1 6237BD0F
P 1550 3200
F 0 "#PWR0116" H 1550 3050 50  0001 C CNN
F 1 "+12V" H 1565 3373 50  0000 C CNN
F 2 "" H 1550 3200 50  0001 C CNN
F 3 "" H 1550 3200 50  0001 C CNN
	1    1550 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3500 1300 2900
Wire Wire Line
	1300 2900 1900 2900
Wire Wire Line
	1900 2900 1900 3600
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 62207B5B
P 6650 1800
F 0 "U1" H 6650 2167 50  0000 C CNN
F 1 "TL072" H 6650 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 6650 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6650 1800 50  0001 C CNN
	1    6650 1800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 62209D18
P 1600 3600
F 0 "U1" H 1600 3967 50  0000 C CNN
F 1 "TL072" H 1600 3876 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 1600 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1600 3600 50  0001 C CNN
	2    1600 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 6220BE96
P 1650 3600
F 0 "U1" H 1608 3646 50  0000 L CNN
F 1 "TL072" H 1608 3555 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 1650 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1650 3600 50  0001 C CNN
	3    1650 3600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT3904DW1 Q2
U 1 1 6229C328
P 4100 2200
F 0 "Q2" H 4290 2246 50  0000 L CNN
F 1 "MBT3904DW1" H 3950 1900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4300 2300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 4100 2200 50  0001 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT3904DW1 Q2
U 2 1 6229CF49
P 4900 2200
F 0 "Q2" H 5091 2246 50  0000 L CNN
F 1 "MBT3904DW1" H 4700 1900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5100 2300 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 4900 2200 50  0001 C CNN
	2    4900 2200
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
