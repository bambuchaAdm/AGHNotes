EESchema Schematic File Version 2  date czw, 22 mar 2012, 13:14:05
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
	5010 3560 5760 3560
Wire Wire Line
	5760 3560 5760 3850
Wire Wire Line
	5760 3850 6080 3850
Wire Wire Line
	6080 3850 6080 3810
Wire Wire Line
	5010 3410 5760 3410
Wire Wire Line
	5760 3410 5760 3220
Wire Wire Line
	5760 3220 6080 3220
Wire Wire Line
	6080 3220 6080 3310
$Comp
L R R1
U 1 1 4F6B0E6A
P 6080 3560
F 0 "R1" V 6160 3560 50  0000 C CNN
F 1 "R" V 6080 3560 50  0000 C CNN
	1    6080 3560
	1    0    0    -1  
$EndComp
$Comp
L RIGOL_3051 U1
U 1 1 4F6B0E64
P 4210 3560
F 0 "U1" H 4660 3210 60  0000 C CNN
F 1 "RIGOL_3051" H 4460 3910 60  0000 C CNN
	1    4210 3560
	1    0    0    -1  
$EndComp
$EndSCHEMATC
