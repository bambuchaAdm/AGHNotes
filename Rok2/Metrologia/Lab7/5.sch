EESchema Schematic File Version 2  date pon, 4 cze 2012, 13:46:32
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
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "4 jun 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8860 2900 9250 2900
Connection ~ 8300 4800
Wire Wire Line
	8300 3460 8300 4800
Wire Wire Line
	9250 4800 5200 4800
Wire Wire Line
	9250 4800 9250 2900
Wire Wire Line
	7100 2900 7750 2900
Connection ~ 5700 2900
Wire Wire Line
	5700 2900 5700 2200
Wire Wire Line
	5700 2200 6550 2200
Wire Wire Line
	6550 2200 6550 2350
Wire Wire Line
	5200 3400 5200 2900
Wire Wire Line
	5200 2900 6000 2900
Wire Wire Line
	8300 2350 8300 2200
Wire Wire Line
	8300 2200 7450 2200
Wire Wire Line
	7450 2200 7450 2900
Connection ~ 7450 2900
Wire Wire Line
	5200 4800 5200 4410
Wire Wire Line
	6550 3450 6550 4800
Connection ~ 6550 4800
$Comp
L NZE-AC U1
U 1 1 4FCC9BFC
P 5200 3900
F 0 "U1" H 5300 3650 60  0000 C CNN
F 1 "NZE-AC" H 5000 4150 60  0000 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L IND U3
U 1 1 4FCC9BE0
P 8300 2900
F 0 "U3" H 8370 2580 60  0000 C CNN
F 1 "IND" H 8200 2580 60  0000 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L W U2
U 1 1 4FCC9BD8
P 6550 2900
F 0 "U2" H 6650 2600 60  0000 C CNN
F 1 "W" H 6500 2600 60  0000 C CNN
	1    6550 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
