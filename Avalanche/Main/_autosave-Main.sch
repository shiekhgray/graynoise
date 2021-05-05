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
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 60920028
P 1450 6600
F 0 "J?" H 1500 7017 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1500 6926 50  0000 C CNN
F 2 "" H 1450 6600 50  0001 C CNN
F 3 "~" H 1450 6600 50  0001 C CNN
	1    1450 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 609233A4
P 2050 6500
F 0 "C?" H 2141 6546 50  0000 L CNN
F 1 "CP1_Small" H 2141 6455 50  0000 L CNN
F 2 "" H 2050 6500 50  0001 C CNN
F 3 "~" H 2050 6500 50  0001 C CNN
	1    2050 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 60924676
P 2050 6700
F 0 "C?" H 2141 6746 50  0000 L CNN
F 1 "CP1_Small" H 2141 6655 50  0000 L CNN
F 2 "" H 2050 6700 50  0001 C CNN
F 3 "~" H 2050 6700 50  0001 C CNN
	1    2050 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60924DFF
P 2650 6500
F 0 "C?" H 2742 6546 50  0000 L CNN
F 1 "C_Small" H 2742 6455 50  0000 L CNN
F 2 "" H 2650 6500 50  0001 C CNN
F 3 "~" H 2650 6500 50  0001 C CNN
	1    2650 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60925ACB
P 2650 6700
F 0 "C?" H 2742 6746 50  0000 L CNN
F 1 "C_Small" H 2742 6655 50  0000 L CNN
F 2 "" H 2650 6700 50  0001 C CNN
F 3 "~" H 2650 6700 50  0001 C CNN
	1    2650 6700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D?
U 1 1 609260F2
P 3150 6450
F 0 "D?" V 3104 6530 50  0000 L CNN
F 1 "1N4001" V 3195 6530 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3150 6275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3150 6450 50  0001 C CNN
	1    3150 6450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D?
U 1 1 6092781E
P 3150 6750
F 0 "D?" V 3104 6830 50  0000 L CNN
F 1 "1N4001" V 3195 6830 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 3150 6575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3150 6750 50  0001 C CNN
	1    3150 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6700 1750 6600
Wire Wire Line
	1750 6600 1750 6500
Connection ~ 1750 6600
Wire Wire Line
	1750 6600 2050 6600
Connection ~ 2050 6600
Wire Wire Line
	2050 6600 2650 6600
Connection ~ 2650 6600
Wire Wire Line
	2650 6600 3150 6600
Connection ~ 3150 6600
Wire Wire Line
	1750 6400 2050 6400
Wire Wire Line
	2050 6400 2650 6400
Connection ~ 2050 6400
Wire Wire Line
	2650 6400 2900 6400
Wire Wire Line
	2900 6400 2900 6300
Wire Wire Line
	2900 6300 3150 6300
Connection ~ 2650 6400
Wire Wire Line
	1750 6800 2050 6800
Wire Wire Line
	2050 6800 2650 6800
Connection ~ 2050 6800
Wire Wire Line
	2650 6800 2900 6800
Wire Wire Line
	2900 6800 2900 6900
Wire Wire Line
	2900 6900 3150 6900
Connection ~ 2650 6800
Wire Wire Line
	1250 6400 1250 6050
Wire Wire Line
	1250 6050 1650 6050
Wire Wire Line
	2050 6050 2050 6400
Wire Wire Line
	1250 6800 1250 7150
Wire Wire Line
	1250 7150 1650 7150
Wire Wire Line
	2050 7150 2050 6800
Wire Wire Line
	1250 6700 1250 6600
Wire Wire Line
	1250 6600 1250 6500
Connection ~ 1250 6600
Wire Wire Line
	1050 6600 1250 6600
$Comp
L power:GND #PWR?
U 1 1 6092CEA3
P 1050 6600
F 0 "#PWR?" H 1050 6350 50  0001 C CNN
F 1 "GND" H 1055 6427 50  0000 C CNN
F 2 "" H 1050 6600 50  0001 C CNN
F 3 "" H 1050 6600 50  0001 C CNN
	1    1050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6600 3150 6600
$Comp
L power:GND #PWR?
U 1 1 6092D7E1
P 3400 6600
F 0 "#PWR?" H 3400 6350 50  0001 C CNN
F 1 "GND" H 3405 6427 50  0000 C CNN
F 2 "" H 3400 6600 50  0001 C CNN
F 3 "" H 3400 6600 50  0001 C CNN
	1    3400 6600
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 6092E4C7
P 1650 7150
F 0 "#PWR?" H 1650 7250 50  0001 C CNN
F 1 "-12V" H 1665 7323 50  0000 C CNN
F 2 "" H 1650 7150 50  0001 C CNN
F 3 "" H 1650 7150 50  0001 C CNN
	1    1650 7150
	-1   0    0    1   
$EndComp
Connection ~ 1650 7150
Wire Wire Line
	1650 7150 2050 7150
$Comp
L SparkFun-PowerSymbols:12V #SUPPLY?
U 1 1 6092FF9E
P 1650 6050
F 0 "#SUPPLY?" H 1700 6050 45  0001 L BNN
F 1 "12V" H 1650 6326 45  0000 C CNN
F 2 "XXX-00000" H 1650 6231 60  0000 C CNN
F 3 "" H 1650 6050 60  0001 C CNN
	1    1650 6050
	1    0    0    -1  
$EndComp
Connection ~ 1650 6050
Wire Wire Line
	1650 6050 2050 6050
Text Notes 2250 6200 0    50   ~ 0
power input and filter
$Comp
L Device:D_Zener_Small_ALT D?
U 1 1 6093BAA2
P 2600 2150
F 0 "D?" V 2554 2220 50  0000 L CNN
F 1 "6v+Zener" V 2645 2220 50  0000 L CNN
F 2 "" V 2600 2150 50  0001 C CNN
F 3 "~" V 2600 2150 50  0001 C CNN
	1    2600 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 6093E210
P 2400 2000
F 0 "R?" V 2195 2000 50  0000 C CNN
F 1 "470K" V 2286 2000 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "~" H 2400 2000 50  0001 C CNN
	1    2400 2000
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 6093F0F1
P 4100 2100
F 0 "U?" H 4150 2400 50  0000 C CNN
F 1 "TL074" H 4150 2300 50  0000 C CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4150 2300 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 6094199E
P 5400 2200
F 0 "U?" H 5400 2567 50  0000 C CNN
F 1 "TL074" H 5400 2476 50  0000 C CNN
F 2 "" H 5350 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5450 2400 50  0001 C CNN
	2    5400 2200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 60943BF1
P 2850 3900
F 0 "U?" H 2850 4267 50  0000 C CNN
F 1 "TL074" H 2850 4176 50  0000 C CNN
F 2 "" H 2800 4000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2900 4100 50  0001 C CNN
	3    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 609454BD
P 7450 3100
F 0 "U?" H 7450 3467 50  0000 C CNN
F 1 "TL074" H 7450 3376 50  0000 C CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 3300 50  0001 C CNN
	4    7450 3100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 609474B7
P 4100 2100
F 0 "U?" H 4250 2400 50  0000 L CNN
F 1 "TL074" H 3950 2100 50  0000 L CNN
F 2 "" H 4050 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4150 2300 50  0001 C CNN
	5    4100 2100
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-PowerSymbols:12V #SUPPLY?
U 1 1 60949259
P 4000 1800
F 0 "#SUPPLY?" H 4050 1800 45  0001 L BNN
F 1 "12V" H 4000 2076 45  0000 C CNN
F 2 "XXX-00000" H 4000 1981 60  0000 C CNN
F 3 "" H 4000 1800 60  0001 C CNN
	1    4000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 6094A9BE
P 4000 2400
F 0 "#PWR?" H 4000 2500 50  0001 C CNN
F 1 "-12V" H 4015 2573 50  0000 C CNN
F 2 "" H 4000 2400 50  0001 C CNN
F 3 "" H 4000 2400 50  0001 C CNN
	1    4000 2400
	-1   0    0    1   
$EndComp
$Comp
L SparkFun-PowerSymbols:12V #SUPPLY?
U 1 1 6094BE53
P 2200 1450
F 0 "#SUPPLY?" H 2250 1450 45  0001 L BNN
F 1 "12V" H 2200 1726 45  0000 C CNN
F 2 "XXX-00000" H 2200 1631 60  0000 C CNN
F 3 "" H 2200 1450 60  0001 C CNN
	1    2200 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C?
U 1 1 6094C952
P 2200 2200
F 0 "C?" H 2291 2246 50  0000 L CNN
F 1 "1uF" H 2291 2155 50  0000 L CNN
F 2 "" H 2200 2200 50  0001 C CNN
F 3 "~" H 2200 2200 50  0001 C CNN
	1    2200 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 6094EDEE
P 2200 1750
F 0 "R?" H 2000 1850 50  0000 L CNN
F 1 "470K" H 1950 1750 50  0000 L CNN
F 2 "" H 2200 1750 50  0001 C CNN
F 3 "~" H 2200 1750 50  0001 C CNN
	1    2200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60950F3E
P 2600 2450
F 0 "R?" H 2532 2404 50  0000 R CNN
F 1 "10K" H 2532 2495 50  0000 R CNN
F 2 "" H 2600 2450 50  0001 C CNN
F 3 "~" H 2600 2450 50  0001 C CNN
	1    2600 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60951501
P 3050 2000
F 0 "C?" V 2821 2000 50  0000 C CNN
F 1 "100n" V 2912 2000 50  0000 C CNN
F 2 "" H 3050 2000 50  0001 C CNN
F 3 "~" H 3050 2000 50  0001 C CNN
	1    3050 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60952637
P 3400 2100
F 0 "R?" H 3332 2054 50  0000 R CNN
F 1 "1M" H 3332 2145 50  0000 R CNN
F 2 "" H 3400 2100 50  0001 C CNN
F 3 "~" H 3400 2100 50  0001 C CNN
	1    3400 2100
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 60952C46
P 2600 2700
F 0 "#PWR?" H 2600 2800 50  0001 C CNN
F 1 "-12V" H 2615 2873 50  0000 C CNN
F 2 "" H 2600 2700 50  0001 C CNN
F 3 "" H 2600 2700 50  0001 C CNN
	1    2600 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 2700 2600 2550
Wire Wire Line
	2600 2350 2600 2250
Wire Wire Line
	2600 2050 2600 2000
Wire Wire Line
	2600 2000 2500 2000
Wire Wire Line
	2950 2000 2600 2000
Connection ~ 2600 2000
Wire Wire Line
	2200 2100 2200 2000
$Comp
L power:GND #PWR?
U 1 1 60955CC3
P 2200 2400
F 0 "#PWR?" H 2200 2150 50  0001 C CNN
F 1 "GND" H 2205 2227 50  0000 C CNN
F 2 "" H 2200 2400 50  0001 C CNN
F 3 "" H 2200 2400 50  0001 C CNN
	1    2200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2400 2200 2300
Wire Wire Line
	2200 1650 2200 1450
Wire Wire Line
	3150 2000 3400 2000
$Comp
L power:GND #PWR?
U 1 1 60958B60
P 3400 2300
F 0 "#PWR?" H 3400 2050 50  0001 C CNN
F 1 "GND" H 3405 2127 50  0000 C CNN
F 2 "" H 3400 2300 50  0001 C CNN
F 3 "" H 3400 2300 50  0001 C CNN
	1    3400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2300 3400 2200
Wire Wire Line
	3800 2000 3400 2000
Connection ~ 3400 2000
Wire Wire Line
	2300 2000 2200 2000
Connection ~ 2200 2000
Wire Wire Line
	2200 2000 2200 1850
$Comp
L Device:R_Small_US R?
U 1 1 60962322
P 4050 3100
F 0 "R?" V 3845 3100 50  0000 C CNN
F 1 "470K" V 3936 3100 50  0000 C CNN
F 2 "" H 4050 3100 50  0001 C CNN
F 3 "~" H 4050 3100 50  0001 C CNN
	1    4050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60962A2E
P 3800 3250
F 0 "R?" H 3732 3204 50  0000 R CNN
F 1 "10K" H 3732 3295 50  0000 R CNN
F 2 "" H 3800 3250 50  0001 C CNN
F 3 "~" H 3800 3250 50  0001 C CNN
	1    3800 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60963427
P 3800 3450
F 0 "#PWR?" H 3800 3200 50  0001 C CNN
F 1 "GND" H 3805 3277 50  0000 C CNN
F 2 "" H 3800 3450 50  0001 C CNN
F 3 "" H 3800 3450 50  0001 C CNN
	1    3800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3450 3800 3350
Wire Wire Line
	3800 3150 3800 3100
Wire Wire Line
	3950 3100 3800 3100
Connection ~ 3800 3100
Wire Wire Line
	4150 3100 4400 3100
$Comp
L Device:C_Small C?
U 1 1 60966AD3
P 4050 2800
F 0 "C?" V 3900 2950 50  0000 C CNN
F 1 "10p" V 3912 2800 50  0000 C CNN
F 2 "" H 4050 2800 50  0001 C CNN
F 3 "~" H 4050 2800 50  0001 C CNN
	1    4050 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 2100 4400 2800
Wire Wire Line
	3800 2200 3800 2800
Wire Wire Line
	3950 2800 3800 2800
Connection ~ 3800 2800
Wire Wire Line
	3800 2800 3800 3100
Wire Wire Line
	4150 2800 4400 2800
Connection ~ 4400 2800
Wire Wire Line
	4400 2800 4400 3100
$Comp
L Device:C_Small C?
U 1 1 60972255
P 4600 2100
F 0 "C?" V 4371 2100 50  0000 C CNN
F 1 "100n" V 4462 2100 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "~" H 4600 2100 50  0001 C CNN
	1    4600 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2100 4400 2100
Connection ~ 4400 2100
$Comp
L Device:R_Small_US R?
U 1 1 60973863
P 4850 2100
F 0 "R?" V 5055 2100 50  0000 C CNN
F 1 "1K" V 4964 2100 50  0000 C CNN
F 2 "" H 4850 2100 50  0001 C CNN
F 3 "~" H 4850 2100 50  0001 C CNN
	1    4850 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 2100 4750 2100
$Comp
L SparkFun-Resistors:TRIMPOT-PTH-10MM-KNOB-1_2W-10% VR?
U 1 1 6097AE02
P 5400 2800
F 0 "VR?" V 5290 2800 45  0000 C CNN
F 1 "100K" V 5206 2800 45  0000 C CNN
F 2 "TRIMPOT-PTH-3386U" V 5250 2800 20  0001 C CNN
F 3 "" H 5400 2800 60  0001 C CNN
F 4 "RES-09730" V 5111 2800 60  0000 C CNN "Field4"
	1    5400 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2100 5100 2100
$Comp
L Device:R_Small_US R?
U 1 1 6098B3B0
P 5100 3000
F 0 "R?" H 5032 2954 50  0000 R CNN
F 1 "1K" H 5250 3000 50  0000 R CNN
F 2 "" H 5100 3000 50  0001 C CNN
F 3 "~" H 5100 3000 50  0001 C CNN
	1    5100 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6098C477
P 5100 3400
F 0 "#PWR?" H 5100 3150 50  0001 C CNN
F 1 "GND" H 5105 3227 50  0000 C CNN
F 2 "" H 5100 3400 50  0001 C CNN
F 3 "" H 5100 3400 50  0001 C CNN
	1    5100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3400 5100 3100
Wire Wire Line
	5100 2900 5100 2800
Wire Wire Line
	5200 2800 5100 2800
Connection ~ 5100 2800
Wire Wire Line
	5100 2800 5100 2300
Wire Wire Line
	5400 2600 5600 2600
Wire Wire Line
	5600 2600 5600 2800
Wire Wire Line
	5700 2200 5700 2800
Wire Wire Line
	5700 2800 5600 2800
Connection ~ 5600 2800
Wire Wire Line
	5850 2200 5700 2200
Connection ~ 5700 2200
Text Notes 2550 1200 0    50   ~ 0
zener generates reverse avalanche noise
Text Notes 2500 1300 0    50   ~ 0
very quiet, requires massive amplification\n
Text GLabel 5700 2800 2    50   Input ~ 0
TP1
$Comp
L power:GND #PWR?
U 1 1 6099D11E
P 1600 3100
F 0 "#PWR?" H 1600 2850 50  0001 C CNN
F 1 "GND" V 1605 2972 50  0000 R CNN
F 2 "" H 1600 3100 50  0001 C CNN
F 3 "" H 1600 3100 50  0001 C CNN
	1    1600 3100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609A7C53
P 1150 3200
F 0 "J?" H 1182 3525 50  0000 C CNN
F 1 "Input" H 1182 3434 50  0000 C CNN
F 2 "" H 1150 3200 50  0001 C CNN
F 3 "~" H 1150 3200 50  0001 C CNN
	1    1150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3100 1600 3100
Wire Wire Line
	1600 3650 1350 3650
Wire Wire Line
	1350 3650 1350 3300
Text GLabel 1600 3650 2    50   Input ~ 0
noise
$Comp
L Device:R_Small_US R?
U 1 1 609AE5AA
P 5950 2200
F 0 "R?" V 6155 2200 50  0000 C CNN
F 1 "1K" V 6064 2200 50  0000 C CNN
F 2 "" H 5950 2200 50  0001 C CNN
F 3 "~" H 5950 2200 50  0001 C CNN
	1    5950 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2200 6050 2200
Text GLabel 6400 2200 2    50   Output ~ 0
noise
$Comp
L Connector:AudioJack2_SwitchT J?
U 1 1 609B075D
P 1100 4550
F 0 "J?" H 1132 4875 50  0000 C CNN
F 1 "Trigger" H 1132 4784 50  0000 C CNN
F 2 "" H 1100 4550 50  0001 C CNN
F 3 "~" H 1100 4550 50  0001 C CNN
	1    1100 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609B1456
P 1650 4450
F 0 "#PWR?" H 1650 4200 50  0001 C CNN
F 1 "GND" H 1655 4277 50  0000 C CNN
F 2 "" H 1650 4450 50  0001 C CNN
F 3 "" H 1650 4450 50  0001 C CNN
	1    1650 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4450 1650 4450
Text Notes 6100 2950 2    50   ~ 0
trim to 10v ptp
$EndSCHEMATC
