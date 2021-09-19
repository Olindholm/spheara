EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 64
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
	3150 2200 3350 2200
Text HLabel 4500 2200 2    50   Input ~ 0
CKO
Text HLabel 4500 2350 2    50   Input ~ 0
SDO
Wire Wire Line
	2000 2350 2250 2350
Wire Wire Line
	2000 2200 2250 2200
Text HLabel 2000 2350 0    50   Input ~ 0
SDI
Text HLabel 2000 2200 0    50   Input ~ 0
CKI
Wire Wire Line
	4250 2200 4500 2200
$Sheet
S 2250 2100 900  350 
U 60DD570D
F0 "LEDx16A" 50
F1 "LEDx16.sch" 50
F2 "CKO" I R 3150 2200 50 
F3 "SDO" I R 3150 2350 50 
F4 "SDI" I L 2250 2350 50 
F5 "CKI" I L 2250 2200 50 
$EndSheet
$Sheet
S 3350 2100 900  350 
U 60DD58F9
F0 "LEDx16B" 50
F1 "LEDx16.sch" 50
F2 "CKO" I R 4250 2200 50 
F3 "SDO" I R 4250 2350 50 
F4 "SDI" I L 3350 2350 50 
F5 "CKI" I L 3350 2200 50 
$EndSheet
Wire Wire Line
	4250 2350 4500 2350
Wire Wire Line
	3150 2350 3350 2350
$EndSCHEMATC
