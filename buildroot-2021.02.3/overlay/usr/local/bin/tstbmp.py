#!/usr/bin/env python3

import Adafruit_BMP.BMP085 as BMP085

bm_sensor = BMP085.BMP085(busnum=1)

while True:
    print('Temp = {0:0.2f} *C'.format(bm_sensor.read_temperature()))
    print('Pressure = {0:0.2f} Pa'.format(bm_sensor.read_pressure()))
    print('Altitude = {0:0.2f} m'.format(bm_sensor.read_altitude()))
    print('Sealevel Pressure = {0:0.2f} Pa'.format(bm_sensor.read_sealevel_pressure()) + '\n')
