EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 7300 1900 2    50   Input ~ 0
SDA_1
Text GLabel 7300 2000 2    50   Input ~ 0
SCL_1
Text GLabel 7900 1850 2    50   Input ~ 0
D3
Text GLabel 7300 2200 2    50   Input ~ 0
D2
$Comp
L power:GND #PWR0111
U 1 1 60A3296B
P 9900 5800
F 0 "#PWR0111" H 9900 5550 50  0001 C CNN
F 1 "GND" H 9905 5627 50  0000 C CNN
F 2 "" H 9900 5800 50  0001 C CNN
F 3 "" H 9900 5800 50  0001 C CNN
	1    9900 5800
	-1   0    0    1   
$EndComp
Text GLabel 10100 5800 1    50   Input ~ 0
SDA_1
Text GLabel 10000 5800 1    50   Input ~ 0
SCL_1
$Comp
L power:+5V #PWR0112
U 1 1 60A5D9E3
P 9700 4850
F 0 "#PWR0112" H 9700 4700 50  0001 C CNN
F 1 "+5V" V 9715 4978 50  0000 L CNN
F 2 "" H 9700 4850 50  0001 C CNN
F 3 "" H 9700 4850 50  0001 C CNN
	1    9700 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 60A5D9E9
P 9900 4850
F 0 "#PWR0113" H 9900 4600 50  0001 C CNN
F 1 "GND" H 9905 4677 50  0000 C CNN
F 2 "" H 9900 4850 50  0001 C CNN
F 3 "" H 9900 4850 50  0001 C CNN
	1    9900 4850
	-1   0    0    1   
$EndComp
Text GLabel 10000 4850 1    50   Input ~ 0
SDA_1
Text GLabel 10100 4850 1    50   Input ~ 0
SCL_1
$Comp
L power:GND #PWR0114
U 1 1 60A79F8A
P 10200 4850
F 0 "#PWR0114" H 10200 4600 50  0001 C CNN
F 1 "GND" H 10205 4677 50  0000 C CNN
F 2 "" H 10200 4850 50  0001 C CNN
F 3 "" H 10200 4850 50  0001 C CNN
	1    10200 4850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x14_Male J4
U 1 1 60A8412F
P 10050 4000
F 0 "J4" H 10158 4781 50  0000 C CNN
F 1 "LSM9DS1" H 10158 4690 50  0000 C CNN
F 2 "Custom:LSM9DS1" H 10050 4000 50  0001 C CNN
F 3 "~" H 10050 4000 50  0001 C CNN
	1    10050 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 60A949F1
P 9450 3800
F 0 "#PWR0115" H 9450 3650 50  0001 C CNN
F 1 "+5V" V 9465 3928 50  0000 L CNN
F 2 "" H 9450 3800 50  0001 C CNN
F 3 "" H 9450 3800 50  0001 C CNN
	1    9450 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 60A949F7
P 9650 3800
F 0 "#PWR0116" H 9650 3550 50  0001 C CNN
F 1 "GND" H 9655 3627 50  0000 C CNN
F 2 "" H 9650 3800 50  0001 C CNN
F 3 "" H 9650 3800 50  0001 C CNN
	1    9650 3800
	-1   0    0    1   
$EndComp
Text GLabel 9850 3800 1    50   Input ~ 0
SDA_1
Text GLabel 9750 3800 1    50   Input ~ 0
SCL_1
Text GLabel 10550 1550 2    50   Input ~ 0
D2
Connection ~ 10350 1550
Wire Wire Line
	10550 1550 10350 1550
Connection ~ 10000 1250
Wire Wire Line
	10350 1250 10000 1250
Wire Wire Line
	10350 1550 10300 1550
Wire Wire Line
	10000 1150 10000 1250
$Comp
L Device:R R1
U 1 1 60A4B852
P 10350 1400
F 0 "R1" H 10420 1446 50  0000 L CNN
F 1 "4.7k" H 10420 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10280 1400 50  0001 C CNN
F 3 "~" H 10350 1400 50  0001 C CNN
	1    10350 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60A498FC
P 10000 1850
F 0 "#PWR0107" H 10000 1600 50  0001 C CNN
F 1 "GND" H 10005 1677 50  0000 C CNN
F 2 "" H 10000 1850 50  0001 C CNN
F 3 "" H 10000 1850 50  0001 C CNN
	1    10000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 60A493B1
P 10000 1150
F 0 "#PWR0106" H 10000 1000 50  0001 C CNN
F 1 "+5V" V 10015 1278 50  0000 L CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:DS18B20 U1
U 1 1 60A34C46
P 10000 1550
F 0 "U1" H 9770 1596 50  0000 R CNN
F 1 "DS18B20" H 9770 1505 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 9000 1300 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 9850 1800 50  0001 C CNN
	1    10000 1550
	1    0    0    -1  
$EndComp
Text Notes 9400 2250 0    89   ~ 0
Temperature Sensor
Text GLabel 5700 1600 0    50   Input ~ 0
RX1
Text GLabel 5700 1700 0    50   Input ~ 0
TX1
Text Notes 9550 4250 0    89   ~ 0
Accelerometer +
Text Notes 9650 5300 0    89   ~ 0
Gas Sensor
Text Notes 9600 6250 0    89   ~ 0
Barometer
$Comp
L Connector:Conn_01x09_Male J5
U 1 1 60BD644E
P 8600 1550
F 0 "J5" H 8708 2131 50  0000 C CNN
F 1 "GPS" H 8708 2040 50  0000 C CNN
F 2 "Custom:uGPS Bv3" H 8600 1550 50  0001 C CNN
F 3 "~" H 8600 1550 50  0001 C CNN
	1    8600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0117
U 1 1 60BDB06F
P 8800 1850
F 0 "#PWR0117" H 8800 1700 50  0001 C CNN
F 1 "+5V" V 8815 1978 50  0000 L CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 60BDB075
P 8800 1750
F 0 "#PWR0118" H 8800 1500 50  0001 C CNN
F 1 "GND" V 8805 1622 50  0000 R CNN
F 2 "" H 8800 1750 50  0001 C CNN
F 3 "" H 8800 1750 50  0001 C CNN
	1    8800 1750
	0    -1   -1   0   
$EndComp
Text Notes 8600 2250 0    89   ~ 0
GPS
$Comp
L Connector:Conn_01x08_Male J3
U 1 1 60A56257
P 10000 5050
F 0 "J3" H 10108 5531 50  0000 C CNN
F 1 "CCS811" H 10108 5440 50  0000 C CNN
F 2 "Custom:CCS811" H 10000 5050 50  0001 C CNN
F 3 "~" H 10000 5050 50  0001 C CNN
	1    10000 5050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 60A2879B
P 9900 6000
F 0 "J2" H 10008 6281 50  0000 C CNN
F 1 "BMP180" H 10008 6190 50  0000 C CNN
F 2 "Custom:JBtec BMP180" H 9900 6000 50  0001 C CNN
F 3 "~" H 9900 6000 50  0001 C CNN
	1    9900 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 60A2AE06
P 9800 5800
F 0 "#PWR0110" H 9800 5650 50  0001 C CNN
F 1 "+5V" V 9815 5928 50  0000 L CNN
F 2 "" H 9800 5800 50  0001 C CNN
F 3 "" H 9800 5800 50  0001 C CNN
	1    9800 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 60EF251C
P 6500 2500
F 0 "J1" H 6500 3981 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 6500 3890 50  0000 C CNN
F 2 "Custom:pi zero w" H 6500 2500 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 6500 2500 50  0001 C CNN
	1    6500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 60F57048
P 6300 1200
F 0 "#PWR0101" H 6300 1050 50  0001 C CNN
F 1 "+5V" H 6315 1373 50  0000 C CNN
F 2 "" H 6300 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0001 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
Text GLabel 8800 1550 2    50   Input ~ 0
RX1
Text GLabel 8800 1650 2    50   Input ~ 0
TX1
$Comp
L power:GND #PWR0102
U 1 1 60F938A0
P 6450 3900
F 0 "#PWR0102" H 6450 3650 50  0001 C CNN
F 1 "GND" H 6455 3727 50  0000 C CNN
F 2 "" H 6450 3900 50  0001 C CNN
F 3 "" H 6450 3900 50  0001 C CNN
	1    6450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3900 6500 3900
Wire Wire Line
	6800 3900 6800 3800
Wire Wire Line
	6700 3800 6700 3900
Connection ~ 6700 3900
Wire Wire Line
	6700 3900 6800 3900
Wire Wire Line
	6450 3900 6400 3900
Wire Wire Line
	6100 3900 6100 3800
Connection ~ 6450 3900
Wire Wire Line
	6400 3800 6400 3900
Connection ~ 6400 3900
Wire Wire Line
	6400 3900 6300 3900
Wire Wire Line
	6500 3800 6500 3900
Connection ~ 6500 3900
Wire Wire Line
	6500 3900 6600 3900
Wire Wire Line
	6600 3800 6600 3900
Connection ~ 6600 3900
Wire Wire Line
	6600 3900 6700 3900
Wire Wire Line
	6200 3800 6200 3900
Connection ~ 6200 3900
Wire Wire Line
	6200 3900 6100 3900
Wire Wire Line
	6300 3800 6300 3900
Connection ~ 6300 3900
Wire Wire Line
	6300 3900 6200 3900
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 60FA4149
P 8700 2750
F 0 "J6" V 8854 2562 50  0000 R CNN
F 1 "Conn_01x03_Male" V 8763 2562 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8700 2750 50  0001 C CNN
F 3 "~" H 8700 2750 50  0001 C CNN
	1    8700 2750
	0    -1   -1   0   
$EndComp
Text GLabel 8700 2550 1    50   Input ~ 0
RX1
Text GLabel 8800 2550 1    50   Input ~ 0
TX1
$Comp
L power:GND #PWR0103
U 1 1 60FC1A13
P 8600 2550
F 0 "#PWR0103" H 8600 2300 50  0001 C CNN
F 1 "GND" H 8605 2377 50  0000 C CNN
F 2 "" H 8600 2550 50  0001 C CNN
F 3 "" H 8600 2550 50  0001 C CNN
	1    8600 2550
	-1   0    0    1   
$EndComp
$EndSCHEMATC