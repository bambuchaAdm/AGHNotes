EESchema Schematic File Version 2  date czw, 22 mar 2012, 13:15:57
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
Connection ~ 5360 3560
Wire Wire Line
	5360 3560 5360 3950
Wire Wire Line
	5360 3950 5010 3950
Wire Wire Line
	3410 4200 3140 4200
Wire Wire Line
	3140 4200 3140 4570
Wire Wire Line
	3140 4570 5770 4570
Wire Wire Line
	5770 4570 5770 4320
Wire Wire Line
	3410 4000 3140 4000
Wire Wire Line
	3140 4000 3140 3560
Wire Wire Line
	3140 3560 5770 3560
Wire Wire Line
	5770 3560 5770 3820
Wire Wire Line
	5010 4250 5360 4250
Wire Wire Line
	5360 4250 5360 4570
Connection ~ 5360 4570
$Comp
L R R1
U 1 1 4F6B0F08
P 5770 4070
F 0 "R1" V 5850 4070 50  0000 C CNN
F 1 "R" V 5770 4070 50  0000 C CNN
	1    5770 4070
	1    0    0    -1  
$EndComp
$Comp
L RIGOL_3051 U1
U 1 1 4F6B0EDD
P 4210 4100
F 0 "U1" H 4660 3750 60  0000 C CNN
F 1 "RIGOL_3051" H 4460 4450 60  0000 C CNN
	1    4210 4100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
