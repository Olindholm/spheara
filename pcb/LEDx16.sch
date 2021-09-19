EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 64
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
	3000 2350 3200 2350
Text HLabel 4250 2350 2    50   Input ~ 0
CKO
Text HLabel 4250 2500 2    50   Input ~ 0
SDO
Wire Wire Line
	1950 2500 2200 2500
Wire Wire Line
	1950 2350 2200 2350
Text HLabel 1950 2500 0    50   Input ~ 0
SDI
Text HLabel 1950 2350 0    50   Input ~ 0
CKI
Wire Wire Line
	4000 2350 4250 2350
$Sheet
S 2200 2250 800  350 
U 60DD4706
F0 "LEDx8A" 50
F1 "LEDx8.sch" 50
F2 "CKO" I R 3000 2350 50 
F3 "SDO" I R 3000 2500 50 
F4 "SDI" I L 2200 2500 50 
F5 "CKI" I L 2200 2350 50 
$EndSheet
$Sheet
S 3200 2250 800  350 
U 60DD482A
F0 "LEDx8B" 50
F1 "LEDx8.sch" 50
F2 "CKO" I R 4000 2350 50 
F3 "SDO" I R 4000 2500 50 
F4 "SDI" I L 3200 2500 50 
F5 "CKI" I L 3200 2350 50 
$EndSheet
Wire Wire Line
	4250 2500 4000 2500
Wire Wire Line
	3200 2500 3000 2500
$EndSCHEMATC
