EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ez80f91
LIBS:conn_24
LIBS:gd_core
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "EightZero"
Date "23 oct 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_20 P7
U 1 1 5173EAE3
P 5150 1900
F 0 "P7" V 5101 1900 60  0000 C CNN
F 1 "MII" V 5200 1900 60  0000 C CNN
F 2 "" H 5150 1900 60  0001 C CNN
F 3 "" H 5150 1900 60  0001 C CNN
	1    5150 1900
	1    0    0    1   
$EndComp
Text Label 1000 6050 0    60   ~ 0
HALT
Text Label 1000 6150 0    60   ~ 0
WP
Text Label 1000 5950 0    60   ~ 0
BUSACK
Text Label 1000 5850 0    60   ~ 0
BUSREQ
Text Label 1000 5750 0    60   ~ 0
NMI
Text Label 1000 5650 0    60   ~ 0
RESET
Text Label 1000 5550 0    60   ~ 0
WAIT
Text Label 1000 5450 0    60   ~ 0
INSTRD
Text Label 1000 5350 0    60   ~ 0
WR
Text Label 1000 5250 0    60   ~ 0
RD
Text Label 1000 5150 0    60   ~ 0
MREQ
Text Label 1000 5050 0    60   ~ 0
IORQ
Text Label 1000 4950 0    60   ~ 0
D7
Text Label 1000 4850 0    60   ~ 0
D6
Text Label 1000 4750 0    60   ~ 0
D5
Text Label 1000 4650 0    60   ~ 0
D4
Text Label 1000 4550 0    60   ~ 0
D3
Text Label 1000 4450 0    60   ~ 0
D2
Text Label 1000 4350 0    60   ~ 0
D1
Text Label 1000 4250 0    60   ~ 0
D0
Text Label 1000 4150 0    60   ~ 0
CS3
Text Label 1000 4050 0    60   ~ 0
CS2
Text Label 1000 3950 0    60   ~ 0
CS1
Text Label 1000 3850 0    60   ~ 0
CS0
Text Label 1000 3650 0    60   ~ 0
A23
Text Label 1000 3550 0    60   ~ 0
A22
Text Label 1000 3450 0    60   ~ 0
A21
Text Label 1000 3350 0    60   ~ 0
A20
Text Label 1000 3250 0    60   ~ 0
A19
Text Label 1000 3150 0    60   ~ 0
A18
Text Label 1000 3050 0    60   ~ 0
A17
Text Label 1000 2950 0    60   ~ 0
A16
Text Label 1000 2850 0    60   ~ 0
A15
Text Label 1000 2750 0    60   ~ 0
A14
Text Label 1000 2650 0    60   ~ 0
A13
Text Label 1000 2550 0    60   ~ 0
A12
Text Label 1000 2450 0    60   ~ 0
A11
Text Label 1000 2350 0    60   ~ 0
A10
Text Label 1000 2250 0    60   ~ 0
A9
Text Label 1000 2150 0    60   ~ 0
A8
Text Label 1000 2050 0    60   ~ 0
A7
Text Label 1000 1950 0    60   ~ 0
A6
Text Label 1000 1850 0    60   ~ 0
A5
Text Label 1000 1750 0    60   ~ 0
A4
Text Label 1000 1650 0    60   ~ 0
A3
Text Label 1000 1550 0    60   ~ 0
A2
Text Label 1000 1450 0    60   ~ 0
A1
Text Label 1000 1350 0    60   ~ 0
A0
$Comp
L CONN_10 P6
U 1 1 5173D795
P 5100 6750
F 0 "P6" V 5050 6750 60  0000 C CNN
F 1 "PORT D" V 5150 6750 60  0000 C CNN
F 2 "" H 5100 6750 60  0001 C CNN
F 3 "" H 5100 6750 60  0001 C CNN
	1    5100 6750
	1    0    0    1   
$EndComp
$Comp
L CONN_10 P5
U 1 1 5173D78F
P 5800 5350
F 0 "P5" V 5750 5350 60  0000 C CNN
F 1 "PORT C" V 5850 5350 60  0000 C CNN
F 2 "" H 5800 5350 60  0001 C CNN
F 3 "" H 5800 5350 60  0001 C CNN
	1    5800 5350
	1    0    0    1   
$EndComp
$Comp
L CONN_10 P4
U 1 1 5173D74F
P 5100 4500
F 0 "P4" V 5050 4500 60  0000 C CNN
F 1 "PORT B" V 5150 4500 60  0000 C CNN
F 2 "" H 5100 4500 60  0001 C CNN
F 3 "" H 5100 4500 60  0001 C CNN
	1    5100 4500
	1    0    0    1   
$EndComp
$Comp
L CONN_10 P3
U 1 1 5173D703
P 5850 3250
F 0 "P3" V 5800 3250 60  0000 C CNN
F 1 "PORT A" V 5900 3250 60  0000 C CNN
F 2 "" H 5850 3250 60  0001 C CNN
F 3 "" H 5850 3250 60  0001 C CNN
	1    5850 3250
	1    0    0    1   
$EndComp
$Comp
L CONN_24 P2
U 1 1 5173D612
P 600 5300
F 0 "P2" V 551 5300 60  0000 C CNN
F 1 "DATA" V 650 5300 60  0000 C CNN
F 2 "" H 600 5300 60  0001 C CNN
F 3 "" H 600 5300 60  0001 C CNN
	1    600  5300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_24 P1
U 1 1 5173D605
P 600 2800
F 0 "P1" V 551 2800 60  0000 C CNN
F 1 "ADDRESS" V 650 2800 60  0000 C CNN
F 2 "" H 600 2800 60  0001 C CNN
F 3 "" H 600 2800 60  0001 C CNN
	1    600  2800
	-1   0    0    -1  
$EndComp
$Comp
L EZ80F91 U1
U 1 1 51739D2B
P 2800 4200
F 0 "U1" H 2800 4250 60  0000 C CNN
F 1 "EZ80F91" H 2800 4100 60  0000 C CNN
F 2 "" H 2800 4200 60  0001 C CNN
F 3 "" H 2800 4200 60  0001 C CNN
	1    2800 4200
	1    0    0    -1  
$EndComp
$Comp
L DB15 J1
U 1 1 51EEB57A
P 10900 4350
F 0 "J1" H 10920 5200 70  0000 C CNN
F 1 "VGA" H 10850 3500 70  0000 C CNN
F 2 "~" H 10900 4350 60  0000 C CNN
F 3 "~" H 10900 4350 60  0000 C CNN
	1    10900 4350
	1    0    0    1   
$EndComp
Text Label 10000 3650 0    60   ~ 0
RED
Text Label 10000 3850 0    60   ~ 0
GREEN
Text Label 10000 4050 0    60   ~ 0
BLUE
$Comp
L GND #PWR01
U 1 1 51EEBAA8
P 10350 5150
F 0 "#PWR01" H 10350 5150 30  0001 C CNN
F 1 "GND" H 10350 5080 30  0001 C CNN
F 2 "" H 10350 5150 60  0000 C CNN
F 3 "" H 10350 5150 60  0000 C CNN
	1    10350 5150
	1    0    0    -1  
$EndComp
Text Label 10000 4550 0    60   ~ 0
HSYNC
Text Label 10000 4750 0    60   ~ 0
VSYNC
$Comp
L R R1
U 1 1 51EEBF91
P 9200 3650
F 0 "R1" V 9280 3650 40  0000 C CNN
F 1 "R" V 9207 3651 40  0000 C CNN
F 2 "~" V 9130 3650 30  0000 C CNN
F 3 "~" H 9200 3650 30  0000 C CNN
	1    9200 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 51EEBFA0
P 9200 3800
F 0 "R2" V 9280 3800 40  0000 C CNN
F 1 "R" V 9207 3801 40  0000 C CNN
F 2 "~" V 9130 3800 30  0000 C CNN
F 3 "~" H 9200 3800 30  0000 C CNN
	1    9200 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 51EEBFAF
P 9200 3950
F 0 "R3" V 9280 3950 40  0000 C CNN
F 1 "R" V 9207 3951 40  0000 C CNN
F 2 "~" V 9130 3950 30  0000 C CNN
F 3 "~" H 9200 3950 30  0000 C CNN
	1    9200 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 51EEBFBE
P 9200 4100
F 0 "R4" V 9280 4100 40  0000 C CNN
F 1 "R" V 9207 4101 40  0000 C CNN
F 2 "~" V 9130 4100 30  0000 C CNN
F 3 "~" H 9200 4100 30  0000 C CNN
	1    9200 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 51EEBFCD
P 9200 4250
F 0 "R5" V 9280 4250 40  0000 C CNN
F 1 "R" V 9207 4251 40  0000 C CNN
F 2 "~" V 9130 4250 30  0000 C CNN
F 3 "~" H 9200 4250 30  0000 C CNN
	1    9200 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 51EEBFDC
P 9200 4400
F 0 "R6" V 9280 4400 40  0000 C CNN
F 1 "R" V 9207 4401 40  0000 C CNN
F 2 "~" V 9130 4400 30  0000 C CNN
F 3 "~" H 9200 4400 30  0000 C CNN
	1    9200 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 51EEBFEB
P 9200 4550
F 0 "R7" V 9280 4550 40  0000 C CNN
F 1 "R" V 9207 4551 40  0000 C CNN
F 2 "~" V 9130 4550 30  0000 C CNN
F 3 "~" H 9200 4550 30  0000 C CNN
	1    9200 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 51EEBFFA
P 9200 4700
F 0 "R8" V 9280 4700 40  0000 C CNN
F 1 "R" V 9207 4701 40  0000 C CNN
F 2 "~" V 9130 4700 30  0000 C CNN
F 3 "~" H 9200 4700 30  0000 C CNN
	1    9200 4700
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 51EEC009
P 9200 4850
F 0 "R9" V 9280 4850 40  0000 C CNN
F 1 "R" V 9207 4851 40  0000 C CNN
F 2 "~" V 9130 4850 30  0000 C CNN
F 3 "~" H 9200 4850 30  0000 C CNN
	1    9200 4850
	0    -1   -1   0   
$EndComp
$Comp
L GD_CORE U2
U 1 1 5267180D
P 8050 4400
F 0 "U2" H 8050 5400 60  0000 C CNN
F 1 "GD_CORE" H 8050 3400 60  0000 C CNN
F 2 "~" H 8050 4400 60  0000 C CNN
F 3 "~" H 8050 4400 60  0000 C CNN
	1    8050 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	4050 1150 4800 1150
Wire Wire Line
	4050 1250 4800 1250
Wire Wire Line
	4050 2050 4800 2050
Wire Wire Line
	4050 1950 4800 1950
Wire Wire Line
	4050 1750 4800 1750
Wire Wire Line
	4050 1850 4800 1850
Wire Wire Line
	4050 1450 4800 1450
Wire Wire Line
	4050 1350 4800 1350
Wire Wire Line
	4050 1550 4800 1550
Wire Wire Line
	4050 1650 4800 1650
Wire Wire Line
	4050 2450 4800 2450
Wire Wire Line
	4050 2350 4800 2350
Wire Wire Line
	4050 2150 4800 2150
Wire Wire Line
	4050 2250 4800 2250
Wire Wire Line
	4050 2650 4800 2650
Wire Wire Line
	4050 2550 4800 2550
Wire Wire Line
	4050 2750 4800 2750
Wire Wire Line
	4050 2850 4800 2850
Wire Wire Line
	5500 3100 4050 3100
Wire Wire Line
	5500 3300 4050 3300
Wire Wire Line
	5500 3500 4050 3500
Wire Wire Line
	5500 3700 4050 3700
Wire Wire Line
	950  6050 1500 6050
Wire Wire Line
	950  5850 1500 5850
Wire Wire Line
	950  5650 1500 5650
Wire Wire Line
	950  5450 1500 5450
Wire Wire Line
	950  5250 1500 5250
Wire Wire Line
	950  5050 1500 5050
Wire Wire Line
	1500 5100 1550 5100
Wire Wire Line
	950  4850 1550 4850
Wire Wire Line
	950  4650 1550 4650
Wire Wire Line
	950  4350 1550 4350
Wire Wire Line
	950  4150 1500 4150
Wire Wire Line
	1500 4050 950  4050
Wire Wire Line
	1500 3850 950  3850
Wire Wire Line
	1550 1550 950  1550
Wire Wire Line
	1550 1350 950  1350
Wire Wire Line
	950  1450 1550 1450
Wire Wire Line
	950  1650 1550 1650
Wire Wire Line
	950  2050 1550 2050
Wire Wire Line
	950  1850 1550 1850
Wire Wire Line
	1550 1750 950  1750
Wire Wire Line
	1550 1950 950  1950
Wire Wire Line
	1550 2750 950  2750
Wire Wire Line
	1550 2550 950  2550
Wire Wire Line
	950  2650 1550 2650
Wire Wire Line
	950  2850 1550 2850
Wire Wire Line
	950  2450 1550 2450
Wire Wire Line
	950  2250 1550 2250
Wire Wire Line
	1550 2150 950  2150
Wire Wire Line
	1550 2350 950  2350
Wire Wire Line
	1550 3550 950  3550
Wire Wire Line
	1550 3350 950  3350
Wire Wire Line
	950  3450 1550 3450
Wire Wire Line
	950  3650 1550 3650
Wire Wire Line
	950  3250 1550 3250
Wire Wire Line
	950  3050 1550 3050
Wire Wire Line
	1550 2950 950  2950
Wire Wire Line
	1550 3150 950  3150
Wire Wire Line
	950  3950 1500 3950
Wire Wire Line
	950  4250 1550 4250
Wire Wire Line
	950  4450 1550 4450
Wire Wire Line
	950  4550 1550 4550
Wire Wire Line
	950  4750 1550 4750
Wire Wire Line
	950  4950 1550 4950
Wire Wire Line
	1550 5200 1500 5200
Wire Wire Line
	1500 5200 1500 5150
Wire Wire Line
	1500 5150 950  5150
Wire Wire Line
	950  5350 1500 5350
Wire Wire Line
	950  5550 1500 5550
Wire Wire Line
	950  5750 1500 5750
Wire Wire Line
	950  5950 1500 5950
Wire Wire Line
	950  6150 1450 6150
Wire Wire Line
	4050 3600 5500 3600
Wire Wire Line
	4050 3400 5500 3400
Wire Wire Line
	4050 3200 5500 3200
Wire Wire Line
	4050 3000 5500 3000
Wire Wire Line
	4050 4250 4750 4250
Wire Wire Line
	4050 4450 4750 4450
Wire Wire Line
	4050 4650 4750 4650
Wire Wire Line
	4050 4850 4750 4850
Wire Wire Line
	4750 4950 4050 4950
Wire Wire Line
	4750 4750 4050 4750
Wire Wire Line
	4750 4550 4050 4550
Wire Wire Line
	4750 4350 4050 4350
Wire Wire Line
	5450 5200 4050 5200
Wire Wire Line
	5450 5400 4050 5400
Wire Wire Line
	5450 5600 4050 5600
Wire Wire Line
	5450 5800 4050 5800
Wire Wire Line
	5450 5700 4050 5700
Wire Wire Line
	5450 5500 4050 5500
Wire Wire Line
	5450 5300 4050 5300
Wire Wire Line
	5450 5100 4050 5100
Wire Wire Line
	4750 6600 4050 6600
Wire Wire Line
	4750 6800 4050 6800
Wire Wire Line
	4750 7000 4050 7000
Wire Wire Line
	4750 7200 4050 7200
Wire Wire Line
	4050 7100 4750 7100
Wire Wire Line
	4050 6900 4750 6900
Wire Wire Line
	4050 6700 4750 6700
Wire Wire Line
	4050 6500 4750 6500
Wire Wire Line
	9450 3650 10450 3650
Wire Wire Line
	9650 3850 10450 3850
Wire Wire Line
	9750 4050 10450 4050
Wire Wire Line
	10450 3950 10350 3950
Wire Wire Line
	10350 3950 10350 5150
Wire Wire Line
	10450 5050 10350 5050
Connection ~ 10350 5050
Wire Wire Line
	10450 4850 10350 4850
Connection ~ 10350 4850
Wire Wire Line
	10450 4650 10350 4650
Connection ~ 10350 4650
Wire Wire Line
	10450 4450 10350 4450
Connection ~ 10350 4450
Wire Wire Line
	9850 4550 10450 4550
Wire Wire Line
	10450 4750 9950 4750
Wire Wire Line
	9450 3800 9550 3800
Wire Wire Line
	9550 3650 9550 3950
Connection ~ 9550 3650
Wire Wire Line
	9550 3950 9450 3950
Connection ~ 9550 3800
Wire Wire Line
	9450 4100 9650 4100
Wire Wire Line
	9650 3850 9650 4400
Wire Wire Line
	9650 4250 9450 4250
Connection ~ 9650 4100
Wire Wire Line
	9650 4400 9450 4400
Connection ~ 9650 4250
Wire Wire Line
	9450 4550 9750 4550
Wire Wire Line
	9750 4050 9750 4850
Wire Wire Line
	9750 4700 9450 4700
Connection ~ 9750 4550
Wire Wire Line
	9750 4850 9450 4850
Connection ~ 9750 4700
Wire Wire Line
	9850 4550 9850 5000
Wire Wire Line
	9950 4750 9950 5150
Wire Wire Line
	1500 5050 1500 5100
Wire Wire Line
	1500 3850 1500 3800
Wire Wire Line
	1500 3800 1550 3800
Wire Wire Line
	1500 3900 1550 3900
Wire Wire Line
	1500 3950 1500 3900
Wire Wire Line
	1500 4050 1500 4000
Wire Wire Line
	1500 4000 1550 4000
Wire Wire Line
	1550 4100 1500 4100
Wire Wire Line
	1500 4100 1500 4150
Wire Wire Line
	1550 5300 1500 5300
Wire Wire Line
	1500 5300 1500 5250
Wire Wire Line
	1500 5350 1500 5400
Wire Wire Line
	1500 5400 1550 5400
Wire Wire Line
	1500 5450 1500 5500
Wire Wire Line
	1500 5500 1550 5500
Wire Wire Line
	1500 5550 1500 5600
Wire Wire Line
	1500 5600 1550 5600
Wire Wire Line
	1500 5650 1500 5700
Wire Wire Line
	1500 5700 1550 5700
Wire Wire Line
	1500 5750 1500 5800
Wire Wire Line
	1500 5800 1550 5800
Wire Wire Line
	1500 5850 1500 5900
Wire Wire Line
	1500 5900 1550 5900
Wire Wire Line
	1500 5950 1500 6000
Wire Wire Line
	1500 6000 1550 6000
Wire Wire Line
	1500 6050 1500 6500
Wire Wire Line
	1500 6500 1550 6500
Wire Wire Line
	1450 6150 1450 1200
Wire Wire Line
	1450 1200 1550 1200
Wire Wire Line
	8850 3650 8950 3650
Wire Wire Line
	8850 3800 8950 3800
Wire Wire Line
	8950 3950 8850 3950
Wire Wire Line
	8850 4100 8950 4100
Wire Wire Line
	8950 4250 8850 4250
Wire Wire Line
	8850 4400 8950 4400
Wire Wire Line
	8950 4550 8850 4550
Wire Wire Line
	8850 4700 8950 4700
Wire Wire Line
	8950 4850 8850 4850
Wire Wire Line
	9850 5000 8850 5000
Wire Wire Line
	9950 5150 8850 5150
Wire Wire Line
	2050 7700 2050 7750
Wire Wire Line
	2050 7750 3650 7750
Wire Wire Line
	3650 7750 3650 7600
Wire Wire Line
	3650 7600 3750 7600
Wire Wire Line
	3750 7600 3750 7650
Wire Wire Line
	3550 7700 3550 7750
Connection ~ 3550 7750
Wire Wire Line
	3450 7700 3450 7750
Connection ~ 3450 7750
Wire Wire Line
	3350 7700 3350 7750
Connection ~ 3350 7750
Wire Wire Line
	3250 7700 3250 7750
Connection ~ 3250 7750
Wire Wire Line
	3150 7700 3150 7750
Connection ~ 3150 7750
Wire Wire Line
	3050 7700 3050 7750
Connection ~ 3050 7750
Wire Wire Line
	2950 7700 2950 7750
Connection ~ 2950 7750
Wire Wire Line
	2850 7700 2850 7750
Connection ~ 2850 7750
Wire Wire Line
	2750 7700 2750 7750
Connection ~ 2750 7750
Wire Wire Line
	2650 7700 2650 7750
Connection ~ 2650 7750
Wire Wire Line
	2550 7700 2550 7750
Connection ~ 2550 7750
Wire Wire Line
	2450 7700 2450 7750
Connection ~ 2450 7750
Wire Wire Line
	2350 7700 2350 7750
Connection ~ 2350 7750
Wire Wire Line
	2250 7700 2250 7750
Connection ~ 2250 7750
Wire Wire Line
	2150 7700 2150 7750
Connection ~ 2150 7750
$Comp
L GND #PWR02
U 1 1 52674030
P 3750 7650
F 0 "#PWR02" H 3750 7650 30  0001 C CNN
F 1 "GND" H 3750 7580 30  0001 C CNN
F 2 "" H 3750 7650 60  0000 C CNN
F 3 "" H 3750 7650 60  0000 C CNN
	1    3750 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 700  3400 650 
Wire Wire Line
	3400 650  2100 650 
Wire Wire Line
	2200 700  2200 650 
Connection ~ 2200 650 
Wire Wire Line
	2300 700  2300 650 
Connection ~ 2300 650 
Wire Wire Line
	2400 700  2400 650 
Connection ~ 2400 650 
Wire Wire Line
	2500 700  2500 650 
Connection ~ 2500 650 
Wire Wire Line
	2600 700  2600 650 
Connection ~ 2600 650 
Wire Wire Line
	2700 700  2700 650 
Connection ~ 2700 650 
Wire Wire Line
	2800 700  2800 650 
Connection ~ 2800 650 
Wire Wire Line
	2900 700  2900 650 
Connection ~ 2900 650 
Wire Wire Line
	3000 700  3000 650 
Connection ~ 3000 650 
Wire Wire Line
	3100 700  3100 650 
Connection ~ 3100 650 
Wire Wire Line
	3200 700  3200 650 
Connection ~ 3200 650 
Wire Wire Line
	3300 700  3300 650 
Connection ~ 3300 650 
$Comp
L +3.3V #PWR03
U 1 1 52674B9A
P 2000 700
F 0 "#PWR03" H 2000 660 30  0001 C CNN
F 1 "+3.3V" H 2000 810 30  0000 C CNN
F 2 "" H 2000 700 60  0000 C CNN
F 3 "" H 2000 700 60  0000 C CNN
	1    2000 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 650  2100 750 
Wire Wire Line
	2100 750  2000 750 
Wire Wire Line
	2000 750  2000 700 
$Comp
L CSMALL C1
U 1 1 52674DF5
P 650 850
F 0 "C1" H 675 900 30  0000 L CNN
F 1 "~" H 675 800 30  0000 L CNN
F 2 "~" H 650 850 60  0000 C CNN
F 3 "~" H 650 850 60  0000 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C4
U 1 1 52674E22
P 1100 850
F 0 "C4" H 1125 900 30  0000 L CNN
F 1 "~" H 1125 800 30  0000 L CNN
F 2 "~" H 1100 850 60  0000 C CNN
F 3 "~" H 1100 850 60  0000 C CNN
	1    1100 850 
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C5
U 1 1 52674E31
P 1250 850
F 0 "C5" H 1275 900 30  0000 L CNN
F 1 "~" H 1275 800 30  0000 L CNN
F 2 "~" H 1250 850 60  0000 C CNN
F 3 "~" H 1250 850 60  0000 C CNN
	1    1250 850 
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C3
U 1 1 52674E13
P 950 850
F 0 "C3" H 975 900 30  0000 L CNN
F 1 "~" H 975 800 30  0000 L CNN
F 2 "~" H 950 850 60  0000 C CNN
F 3 "~" H 950 850 60  0000 C CNN
	1    950  850 
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C2
U 1 1 52674E04
P 800 850
F 0 "C2" H 825 900 30  0000 L CNN
F 1 "~" H 825 800 30  0000 L CNN
F 2 "~" H 800 850 60  0000 C CNN
F 3 "~" H 800 850 60  0000 C CNN
	1    800  850 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 52674EC0
P 650 650
F 0 "#PWR04" H 650 610 30  0001 C CNN
F 1 "+3.3V" H 650 760 30  0000 C CNN
F 2 "" H 650 650 60  0000 C CNN
F 3 "" H 650 650 60  0000 C CNN
	1    650  650 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 52674ED2
P 650 1050
F 0 "#PWR05" H 650 1050 30  0001 C CNN
F 1 "GND" H 650 980 30  0001 C CNN
F 2 "" H 650 1050 60  0000 C CNN
F 3 "" H 650 1050 60  0000 C CNN
	1    650  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  650  650  750 
Wire Wire Line
	650  1050 650  950 
Wire Wire Line
	650  1000 1250 1000
Wire Wire Line
	1250 1000 1250 950 
Connection ~ 650  1000
Wire Wire Line
	650  700  1250 700 
Wire Wire Line
	1250 700  1250 750 
Connection ~ 650  700 
Wire Wire Line
	1100 750  1100 700 
Connection ~ 1100 700 
Wire Wire Line
	1100 950  1100 1000
Connection ~ 1100 1000
Wire Wire Line
	950  950  950  1000
Connection ~ 950  1000
Wire Wire Line
	950  750  950  700 
Connection ~ 950  700 
Wire Wire Line
	800  750  800  700 
Connection ~ 800  700 
Wire Wire Line
	800  950  800  1000
Connection ~ 800  1000
$EndSCHEMATC
