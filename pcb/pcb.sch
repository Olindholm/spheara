EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 64
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3350 1900 1050 350 
U 60DD4AE5
F0 "LEDx32" 50
F1 "LEDx32.sch" 50
F2 "CKO" I R 4400 2000 50 
F3 "SDO" I R 4400 2150 50 
F4 "SDI" I L 3350 2150 50 
F5 "CKI" I L 3350 2000 50 
$EndSheet
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60DD5617
P 1000 900
F 0 "#FLG0101" H 1000 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1073 50  0000 C CNN
F 2 "" H 1000 900 50  0001 C CNN
F 3 "~" H 1000 900 50  0001 C CNN
	1    1000 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60DD5CF9
P 1500 900
F 0 "#PWR0102" H 1500 650 50  0001 C CNN
F 1 "GND" H 1505 727 50  0000 C CNN
F 2 "" H 1500 900 50  0001 C CNN
F 3 "" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 60DD589B
P 1000 900
F 0 "#PWR0101" H 1000 750 50  0001 C CNN
F 1 "+5V" V 1015 1028 50  0000 L CNN
F 2 "" H 1000 900 50  0001 C CNN
F 3 "" H 1000 900 50  0001 C CNN
	1    1000 900 
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60DECB3E
P 950 2050
F 0 "J1" H 1058 2431 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1058 2340 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 950 2050 50  0001 C CNN
F 3 "~" H 950 2050 50  0001 C CNN
	1    950  2050
	1    0    0    -1  
$EndComp
Text GLabel 3150 2000 0    50   Input ~ 0
CKI
Text GLabel 3150 2150 0    50   Input ~ 0
SKI
Text GLabel 4600 2000 2    50   Input ~ 0
CKO
Text GLabel 4600 2150 2    50   Input ~ 0
SKO
Wire Wire Line
	4600 2000 4400 2000
Wire Wire Line
	4600 2150 4400 2150
Wire Wire Line
	3350 2000 3150 2000
Wire Wire Line
	3150 2150 3350 2150
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 60DFF9CD
P 1850 2050
F 0 "J2" H 1958 2431 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1958 2340 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 1850 2050 50  0001 C CNN
F 3 "~" H 1850 2050 50  0001 C CNN
	1    1850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0100
U 1 1 60E026FF
P 2050 1950
F 0 "#PWR0100" H 2050 1700 50  0001 C CNN
F 1 "GND" V 2055 1822 50  0000 R CNN
F 2 "" H 2050 1950 50  0001 C CNN
F 3 "" H 2050 1950 50  0001 C CNN
	1    2050 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR098
U 1 1 60E05AA8
P 1150 1950
F 0 "#PWR098" H 1150 1700 50  0001 C CNN
F 1 "GND" V 1155 1822 50  0000 R CNN
F 2 "" H 1150 1950 50  0001 C CNN
F 3 "" H 1150 1950 50  0001 C CNN
	1    1150 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR097
U 1 1 60E064D0
P 1150 1850
F 0 "#PWR097" H 1150 1700 50  0001 C CNN
F 1 "+5V" V 1165 1978 50  0000 L CNN
F 2 "" H 1150 1850 50  0001 C CNN
F 3 "" H 1150 1850 50  0001 C CNN
	1    1150 1850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR099
U 1 1 60E068BA
P 2050 1850
F 0 "#PWR099" H 2050 1700 50  0001 C CNN
F 1 "+5V" V 2065 1978 50  0000 L CNN
F 2 "" H 2050 1850 50  0001 C CNN
F 3 "" H 2050 1850 50  0001 C CNN
	1    2050 1850
	0    1    1    0   
$EndComp
Text GLabel 2050 2050 2    50   Input ~ 0
CKI
Text GLabel 1150 2050 2    50   Input ~ 0
CKI
Text GLabel 2050 2150 2    50   Input ~ 0
SKI
Text GLabel 1150 2150 2    50   Input ~ 0
SKI
Text GLabel 2050 2250 2    50   Input ~ 0
CKO
Text GLabel 1150 2250 2    50   Input ~ 0
CKO
Text GLabel 2050 2350 2    50   Input ~ 0
SKO
Text GLabel 1150 2350 2    50   Input ~ 0
SKO
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60E37A65
P 1500 900
F 0 "#FLG0102" H 1500 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 1073 50  0000 C CNN
F 2 "" H 1500 900 50  0001 C CNN
F 3 "~" H 1500 900 50  0001 C CNN
	1    1500 900 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
