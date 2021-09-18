EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 27 64
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
S 2850 2150 600  350 
U 60DCF8AD
F0 "LEDx2B" 50
F1 "LEDx2.sch" 50
F2 "CKO" I R 3450 2250 50 
F3 "SDO" I R 3450 2400 50 
F4 "CKI" I L 2850 2250 50 
F5 "SDI" I L 2850 2400 50 
$EndSheet
Wire Wire Line
	2650 2250 2850 2250
Text HLabel 3700 2250 2    50   Input ~ 0
CKO
Text HLabel 3700 2400 2    50   Input ~ 0
SDO
Wire Wire Line
	3450 2250 3700 2250
Wire Wire Line
	1800 2400 2050 2400
Wire Wire Line
	1800 2250 2050 2250
Text HLabel 1800 2400 0    50   Input ~ 0
SDI
Text HLabel 1800 2250 0    50   Input ~ 0
CKI
$Sheet
S 2050 2150 600  350 
U 60DCF80B
F0 "LEDx2A" 50
F1 "LEDx2.sch" 50
F2 "CKO" I R 2650 2250 50 
F3 "SDO" I R 2650 2400 50 
F4 "CKI" I L 2050 2250 50 
F5 "SDI" I L 2050 2400 50 
$EndSheet
Wire Wire Line
	3450 2400 3700 2400
Wire Wire Line
	2650 2400 2850 2400
$EndSCHEMATC
