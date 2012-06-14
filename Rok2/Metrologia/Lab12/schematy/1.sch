EESchema Schematic File Version 2  date pon, 7 maj 2012, 08:43:14
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
LIBS:metrologia
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "7 may 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5300 2850 1    60   ~ 0
BNC
Text Label 5150 2850 1    60   ~ 0
BNC
Connection ~ 3100 2590
Connection ~ 5150 2920
Wire Wire Line
	5150 2920 4650 2920
Wire Wire Line
	4650 2590 4650 2920
Wire Wire Line
	4650 2590 2500 2590
Connection ~ 3100 3650
Wire Wire Line
	5150 3650 2500 3650
Wire Wire Line
	5150 3650 5150 2650
Connection ~ 5300 3050
Wire Wire Line
	5300 2650 5300 3250
Wire Wire Line
	5300 3250 4650 3250
Wire Wire Line
	2500 3650 2500 3575
Wire Wire Line
	3400 3250 3100 3250
Wire Wire Line
	3100 3250 3100 3650
Wire Wire Line
	4650 3050 5300 3050
Wire Wire Line
	2500 2590 2500 2620
Wire Wire Line
	3100 2590 3100 3050
Wire Wire Line
	3100 3050 3400 3050
$Comp
L ACCA U2
U 1 1 4FA7697C
P 4050 3150
F 0 "U2" H 4300 2950 60  0000 C CNN
F 1 "ACCA" H 3800 2950 60  0000 C CNN
	1    4050 3150
	1    0    0    -1  
$EndComp
$Comp
L OSC U3
U 1 1 4FA768CD
P 5300 2200
F 0 "U3" H 5850 1900 60  0000 C CNN
F 1 "OSC" H 4900 1850 60  0000 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
$Comp
L GEN U1
U 1 1 4FA766E1
P 2500 3100
F 0 "U1" H 2565 2870 60  0000 C CNN
F 1 "GEN" H 2405 3320 60  0000 C CNN
	1    2500 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
