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
Text GLabel 2600 900  0    50   Output ~ 0
Level1L
Text GLabel 2600 1000 0    50   Output ~ 0
Level2L
Text GLabel 2600 1150 0    50   Output ~ 0
Level1R
Text GLabel 2600 1250 0    50   Output ~ 0
Level2R
Wire Wire Line
	2600 900  3050 900 
Wire Wire Line
	3050 1000 2600 1000
Wire Wire Line
	2600 1150 3050 1150
Wire Wire Line
	3050 1250 2600 1250
Wire Wire Line
	3050 900  3050 950 
Wire Wire Line
	3050 950  3050 1000
Connection ~ 3050 950 
Wire Wire Line
	3050 1200 3400 1200
Wire Wire Line
	3050 1150 3050 1200
Wire Wire Line
	3050 1200 3050 1250
Connection ~ 3050 1200
$Comp
L Amplifier_Operational:TL074 U301
U 1 1 6268B243
P 4200 1150
F 0 "U301" H 4200 1517 50  0000 C CNN
F 1 "TL074" H 4200 1426 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4150 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4250 1350 50  0001 C CNN
	1    4200 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U301
U 2 1 6268C7A1
P 4200 2300
F 0 "U301" H 4200 2667 50  0000 C CNN
F 1 "TL074" H 4200 2576 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4150 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4250 2500 50  0001 C CNN
	2    4200 2300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U301
U 3 1 6268E5F6
P 5950 1150
F 0 "U301" H 5950 1517 50  0000 C CNN
F 1 "TL074" H 5950 1426 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5900 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 1350 50  0001 C CNN
	3    5950 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U301
U 4 1 62691263
P 5950 2300
F 0 "U301" H 5950 2667 50  0000 C CNN
F 1 "TL074" H 5950 2576 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5900 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 2500 50  0001 C CNN
	4    5950 2300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U301
U 5 1 626930D0
P 6000 1150
F 0 "U301" H 5958 1196 50  0000 L CNN
F 1 "TL074" H 5958 1105 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5950 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6050 1350 50  0001 C CNN
	5    6000 1150
	1    0    0    -1  
$EndComp
$Sheet
S 750  800  1800 750 
U 62687518
F0 "Channel1-2" 50
F1 "Channel1-2.sch" 50
$EndSheet
$Comp
L power:+12V #PWR?
U 1 1 626A8C50
P 5900 800
AR Path="/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626A8C50" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626A8C50" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 5900 650 50  0001 C CNN
F 1 "+12V" H 5915 973 50  0000 C CNN
F 2 "" H 5900 800 50  0001 C CNN
F 3 "" H 5900 800 50  0001 C CNN
	1    5900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 626A8C4A
P 5900 1550
AR Path="/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626A8C4A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626A8C4A" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 5900 1650 50  0001 C CNN
F 1 "-12V" H 5915 1723 50  0000 C CNN
F 2 "" H 5900 1550 50  0001 C CNN
F 3 "" H 5900 1550 50  0001 C CNN
	1    5900 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 626AE3A8
P 4050 600
AR Path="/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626AE3A8" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626AE3A8" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 4050 350 50  0001 C CNN
F 1 "GND" H 4055 427 50  0000 C CNN
F 2 "" H 4050 600 50  0001 C CNN
F 3 "" H 4050 600 50  0001 C CNN
	1    4050 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 600  4050 600 
Wire Wire Line
	3900 600  3900 1050
Wire Wire Line
	3700 950  3700 1250
Wire Wire Line
	3700 1250 3900 1250
$Comp
L Device:R_Small R302
U 1 1 626AF2FC
P 4200 1550
F 0 "R302" V 4004 1550 50  0000 C CNN
F 1 "39K" V 4095 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4200 1550 50  0001 C CNN
F 3 "~" H 4200 1550 50  0001 C CNN
	1    4200 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1250 3700 1550
Wire Wire Line
	3700 1550 4100 1550
Connection ~ 3700 1250
Wire Wire Line
	4300 1550 4500 1550
Wire Wire Line
	4500 1550 4500 1150
$Comp
L Device:R_Small R303
U 1 1 626B0D66
P 4800 1550
F 0 "R303" V 4604 1550 50  0000 C CNN
F 1 "2K" V 4695 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4800 1550 50  0001 C CNN
F 3 "~" H 4800 1550 50  0001 C CNN
	1    4800 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1550 4700 1550
Connection ~ 4500 1550
Wire Wire Line
	5900 850  5900 800 
Wire Wire Line
	4900 1550 5350 1550
Wire Wire Line
	5350 1550 5350 1250
Wire Wire Line
	5350 1250 5650 1250
$Comp
L power:GND #PWR?
U 1 1 626B3181
P 5450 1050
AR Path="/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626B3181" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626B3181" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 5450 800 50  0001 C CNN
F 1 "GND" H 5455 877 50  0000 C CNN
F 2 "" H 5450 1050 50  0001 C CNN
F 3 "" H 5450 1050 50  0001 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1050 5650 1050
$Comp
L Device:R_Small R305
U 1 1 626B43B8
P 5900 1900
F 0 "R305" V 5704 1900 50  0000 C CNN
F 1 "100K" V 5795 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5900 1900 50  0001 C CNN
F 3 "~" H 5900 1900 50  0001 C CNN
	1    5900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 1900 5350 1550
Wire Wire Line
	5350 1900 5800 1900
Connection ~ 5350 1550
Wire Wire Line
	6000 1900 6250 1900
Wire Wire Line
	6250 1900 6250 1150
$Comp
L Device:R_Small R308
U 1 1 626B7A07
P 6500 1150
F 0 "R308" V 6304 1150 50  0000 C CNN
F 1 "1K" V 6395 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6500 1150 50  0001 C CNN
F 3 "~" H 6500 1150 50  0001 C CNN
	1    6500 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1150 6250 1150
Connection ~ 6250 1150
$Comp
L power:GND #PWR?
U 1 1 626B8ACE
P 3700 2200
AR Path="/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626B8ACE" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626B8ACE" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 3700 1950 50  0001 C CNN
F 1 "GND" H 3705 2027 50  0000 C CNN
F 2 "" H 3700 2200 50  0001 C CNN
F 3 "" H 3700 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2200 3900 2200
Wire Wire Line
	3400 2400 3800 2400
$Comp
L Device:R_Small R301
U 1 1 626BA687
P 4150 2750
F 0 "R301" V 3954 2750 50  0000 C CNN
F 1 "39K" V 4045 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4150 2750 50  0001 C CNN
F 3 "~" H 4150 2750 50  0001 C CNN
	1    4150 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R304
U 1 1 626BAAF1
P 4800 2300
F 0 "R304" V 4604 2300 50  0000 C CNN
F 1 "2K" V 4695 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4800 2300 50  0001 C CNN
F 3 "~" H 4800 2300 50  0001 C CNN
	1    4800 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2400 3800 2750
Wire Wire Line
	3800 2750 4050 2750
Connection ~ 3800 2400
Wire Wire Line
	3800 2400 3900 2400
Wire Wire Line
	4250 2750 4500 2750
Wire Wire Line
	4500 2750 4500 2300
Wire Wire Line
	4500 2300 4700 2300
Connection ~ 4500 2300
Wire Wire Line
	4900 2300 4900 2400
Wire Wire Line
	4900 2400 5550 2400
$Comp
L power:GND #PWR?
U 1 1 626BE2EC
P 5450 2200
AR Path="/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626BE2EC" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626BE2EC" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 5450 1950 50  0001 C CNN
F 1 "GND" H 5455 2027 50  0000 C CNN
F 2 "" H 5450 2200 50  0001 C CNN
F 3 "" H 5450 2200 50  0001 C CNN
	1    5450 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 2200 5650 2200
$Comp
L Device:R_Small R306
U 1 1 626BFC8B
P 5900 2750
F 0 "R306" V 5704 2750 50  0000 C CNN
F 1 "100K" V 5795 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 5900 2750 50  0001 C CNN
F 3 "~" H 5900 2750 50  0001 C CNN
	1    5900 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2750 5550 2750
Wire Wire Line
	5550 2750 5550 2400
Connection ~ 5550 2400
Wire Wire Line
	5550 2400 5650 2400
Wire Wire Line
	6000 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2300
$Comp
L Device:R_Small R307
U 1 1 626C223E
P 6450 2300
F 0 "R307" V 6254 2300 50  0000 C CNN
F 1 "1K" V 6345 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 6450 2300 50  0001 C CNN
F 3 "~" H 6450 2300 50  0001 C CNN
	1    6450 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 2300 6250 2300
Connection ~ 6250 2300
$Comp
L power:GND #PWR?
U 1 1 626D3992
P 7100 1000
AR Path="/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626D3992" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626D3992" Ref="#PWR0308"  Part="1" 
F 0 "#PWR0308" H 7100 750 50  0001 C CNN
F 1 "GND" H 7105 827 50  0000 C CNN
F 2 "" H 7100 1000 50  0001 C CNN
F 3 "" H 7100 1000 50  0001 C CNN
	1    7100 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 1050 7100 1000
$Comp
L Connector:AudioJack2_SwitchT OutL?
U 1 1 626D399B
P 7300 1150
AR Path="/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/624C3CB8/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/624FE468/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/624FE4CA/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/624FE546/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/62687518/626D399B" Ref="OutL?"  Part="1" 
AR Path="/624C0657/626D399B" Ref="OutL301"  Part="1" 
F 0 "OutL301" H 7121 1083 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 7121 1174 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 7300 1150 50  0001 C CNN
F 3 "~" H 7300 1150 50  0001 C CNN
	1    7300 1150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT OutR?
U 1 1 626D477B
P 7250 2300
AR Path="/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/624FE468/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/624FE546/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/62687518/626D477B" Ref="OutR?"  Part="1" 
AR Path="/624C0657/626D477B" Ref="OutR301"  Part="1" 
F 0 "OutR301" H 7071 2233 50  0000 R CNN
F 1 "AudioJack2_SwitchT" H 7071 2324 50  0000 R CNN
F 2 "Connector_Audio:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 7250 2300 50  0001 C CNN
F 3 "~" H 7250 2300 50  0001 C CNN
	1    7250 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 626D516A
P 6950 2100
AR Path="/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624C3CB8/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE468/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE4CA/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/624FE546/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/62687518/626D516A" Ref="#PWR?"  Part="1" 
AR Path="/624C0657/626D516A" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6950 1850 50  0001 C CNN
F 1 "GND" H 6955 1927 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 2100 6950 2200
Wire Wire Line
	6950 2200 7050 2200
Wire Wire Line
	6550 2300 7050 2300
Wire Wire Line
	6600 1150 7100 1150
Wire Wire Line
	3050 950  3700 950 
Wire Wire Line
	3400 1200 3400 2400
Wire Wire Line
	5900 1450 5900 1550
$EndSCHEMATC