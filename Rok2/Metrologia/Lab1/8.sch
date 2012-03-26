EESchema Schematic File Version 2  date czw, 22 mar 2012, 13:08:18
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
LIBS:lab-cache
EELAYER 43  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "22 mar 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4000 3380 4310 3380
Wire Wire Line
	4760 3160 4760 3100
Wire Wire Line
	4760 3100 4310 3100
Wire Wire Line
	4310 3100 4310 3230
Wire Wire Line
	4310 3230 4000 3230
Wire Wire Line
	4310 3380 4310 3630
Wire Wire Line
	4310 3630 4760 3630
Wire Wire Line
	4760 3630 4760 3560
$Comp
L C C?
U 1 1 4F6B1608
P 4760 3360
F 0 "C?" H 4810 3460 50  0000 L CNN
F 1 "C" H 4810 3260 50  0000 L CNN
	1    4760 3360
	1    0    0    -1  
$EndComp
$Comp
L RIGOL_3051 U?
U 1 1 4F6B1605
P 3200 3380
F 0 "U?" H 3650 3030 60  0000 C CNN
F 1 "RIGOL_3051" H 3450 3730 60  0000 C CNN
	1    3200 3380
	1    0    0    -1  
$EndComp
$EndSCHEMATC
