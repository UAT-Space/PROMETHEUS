#!/usr/bin/env python3

# For Software
import json
import time
import os
import glob

# For Hardware
import board
import Adafruit_BMP.BMP085 as BMP085    # For Barometric presure and temperature.
import adafruit_ccs811                  # For Gas sensor
import adafruit_lsm9ds1                 # For 9-axis IMU

# Init kernel modules if not already.
os.system('modprobe i2c-dev')

# Debug Handling
if os.getenv("SCRIPT_DEBUG") == '0':
    isDebug = False
elif os.getenv("SCRIPT_DEBUG") == '1':
    isDebug = True
else:
    print("Error, SCRIPT_DEBUG not set or invalid.\n")
    print("To set it, type \"SCRIPT_DEBUG=x\"\n")
    print("0 == False, 1 == True\n")
    print("Assuming SCRIPT_DEBUG = False...\n")
    isDebug = False

if  isinstance(os.getenvb("JSON_PATH"), basestring) 
    pass
else:
    print("JSON_PATH not set, Exiting...")
    exit(1)
    
# Init sensors
i2c = board.I2C();  # Get I2C from board

bmp_sensor = BMP085.BMP085(busnum=1)            # BMP085 object
lsm_sensor = adafruit_lsm9ds1.LSM9DS1_I2C(i2c)  # LSM9DS1 object
ccs811 = adafruit_ccs811.CCS811(i2c)            # CCS811 object

def move (y, x):
    print("\033[%d;%dH" % (y, x))

def main():
    # Wait for all sensors to be ready.
    while not ccs811.data_ready:
        pass

    # For Debugging
    if isDebug:
        os.system("clear")

    # JSON File vars 
    JSONFilePath = os.getenv('JSON_PATH')
    JSONFileName = "allData.json"
    JSONFullPath = JSONFilePath + "/" + JSONFileName

    i = 0
    while True:
        # External temp vars

        # LSM vars
        lsm_accel_x, lsm_accel_y, lsm_accel_z = lsm_sensor.acceleration
        lsm_mag_x, lsm_mag_y, lsm_mag_z = lsm_sensor.magnetic
        lsm_gyro_x, lsm_gyro_y, lsm_gyro_z = lsm_sensor.gyro
        lsm_temp = lsm_sensor.temperature

        # BMP vars
        bmp_temp     = bmp_sensor.read_temperature()
        bmp_altitude = bmp_sensor.read_altitude()
        bmp_pressure = bmp_sensor.read_pressure()
        bmp_seaPress = bmp_sensor.read_sealevel_pressure()

        # CCS vars
        ccs_C02  = ccs811.eco2
        ccs_TVOC = ccs811.tvoc

        # Debug code
        if isDebug:
            # Reset cursor
            move(0,0)
            
            # LSM
            print("----LSM----")
            print("Acceleration (m/s^2): ({0:0.3f},{1:0.3f},{2:0.3f})     ".format(lsm_accel_x, lsm_accel_y, lsm_accel_z))
            print("Magnetometer (gauss): ({0:0.3f},{1:0.3f},{2:0.3f})     ".format(lsm_mag_x, lsm_mag_y, lsm_mag_z))
            print("Gyroscope (rad/sec): ({0:0.3f},{1:0.3f},{2:0.3f})     ".format(lsm_gyro_x, lsm_gyro_y, lsm_gyro_z))
            print("Temperature: {0:0.3f} *C     ".format(lsm_temp))

            # BMP 
            print("\n----BMP----")
            print('Temperature: {0:0.3f} *C     '.format(bmp_temp))
            print('Pressure: {0:0.2f} Pa     '.format(bmp_pressure))
            print('Altitude: {0:0.2f} m     '.format(bmp_altitude))
            print('Sealevel Pressure: {0:0.2f} Pa     '.format(bmp_altitude))

            # CCS
            print("\n----CCS----")
            print("CO2: {} PPM     \nTVOC: {} PPB     ".format(ccs_C02, ccs_TVOC))
        
        data = {'frame':i,
            'data':{
                'bmp':{'temp':bmp_temp, 'pressure':bmp_pressure, 'altitude':bmp_altitude, 'spressure':bmp_seaPress},
                'lsm':{'acceleration':{'x':lsm_accel_x, 'y':lsm_accel_y, 'z':lsm_accel_z},
                       'magenetometer':{'x':lsm_mag_x, 'y':lsm_mag_y, 'x':lsm_mag_z},
                       'gyroscope':{'x':lsm_gyro_x, 'y':lsm_gyro_y, 'x':lsm_gyro_z},
                       'temperature':lsm_temp
                      },
                'ccs':{'co2':ccs_C02, 'tvoc':ccs_TVOC}
                }
            }

        tst = json.dumps(data)
        jsonfile = open(JSONFullPath, 'a')
        jsonfile.write(tst)
        jsonfile.write('\n')
        jsonfile.close()
        i += 1
        time.sleep(.5)

if __name__ == '__main__':
    main()


# JSON Layout  
#{"FRAME":"X",
#   "DATA":{
#       "BMP":{"Temperature":"w", "Pressure":"x", "Altitude":"y", "SPressure":"z"},
#       "LSM":{"Acceleration":{"x":"a", "y":"b", "z":"c"},
#              "Magnetometer":{"x":"a", "y":"b", "z":"c"},
#              "Gyroscope":{"x":"a", "y":"b", "z":"c"},
#              "Temperature":"z"
#             },
#       "CCS":{"CO2":"x", "TVOC":"y"}
#   }
#}