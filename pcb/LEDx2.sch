EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 31 64
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
S 2800 2750 550  500 
U 60E17F3E
F0 "LEDx1A" 50
F1 "LEDx1.sch" 50
F2 "SDO" I R 3350 3100 50 
F3 "CKI" I L 2800 2900 50 
F4 "CKO" I R 3350 2900 50 
F5 "SDI" I L 2800 3100 50 
$EndSheet
$Sheet
S 3600 2750 550  500 
U 60E17F44
F0 "LEDx1B" 50
F1 "LEDx1.sch" 50
F2 "SDO" I R 4150 3100 50 
F3 "CKI" I L 3600 2900 50 
F4 "CKO" I R 4150 2900 50 
F5 "SDI" I L 3600 3100 50 
$EndSheet
Text HLabel 4400 2900 2    50   Input ~ 0
CKO
Text HLabel 4400 3100 2    50   Input ~ 0
SDO
Wire Wire Line
	2550 3100 2800 3100
Wire Wire Line
	2550 2900 2800 2900
Text HLabel 2550 3100 0    50   Input ~ 0
SDI
Text HLabel 2550 2900 0    50   Input ~ 0
CKI
Wire Wire Line
	4150 2900 4400 2900
Wire Wire Line
	3350 2900 3600 2900
Wire Wire Line
	4150 3100 4400 3100
Wire Wire Line
	3350 3100 3600 3100
$EndSCHEMATC
