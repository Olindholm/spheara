EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 64
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2600 2150 2800 2150
Text HLabel 3750 2150 2    50   Input ~ 0
CKO
Text HLabel 3750 2300 2    50   Input ~ 0
SDO
Wire Wire Line
	1650 2300 1900 2300
Wire Wire Line
	1650 2150 1900 2150
Text HLabel 1650 2300 0    50   Input ~ 0
SDI
Text HLabel 1650 2150 0    50   Input ~ 0
CKI
$Sheet
S 2800 2050 700  350 
U 60DD211A
F0 "LEDx4B" 50
F1 "LEDx4.sch" 50
F2 "CKO" I R 3500 2150 50 
F3 "SDO" I R 3500 2300 50 
F4 "SDI" I L 2800 2300 50 
F5 "CKI" I L 2800 2150 50 
$EndSheet
Wire Wire Line
	3500 2150 3750 2150
$Sheet
S 1900 2050 700  350 
U 60DD3481
F0 "LEDx4A" 50
F1 "LEDx4.sch" 50
F2 "CKO" I R 2600 2150 50 
F3 "SDO" I R 2600 2300 50 
F4 "SDI" I L 1900 2300 50 
F5 "CKI" I L 1900 2150 50 
$EndSheet
Wire Wire Line
	3500 2300 3750 2300
Wire Wire Line
	2600 2300 2800 2300
$EndSCHEMATC
