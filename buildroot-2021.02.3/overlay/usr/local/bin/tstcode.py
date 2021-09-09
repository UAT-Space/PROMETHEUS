#!/usr/bin/env python3

import json

FileName = "./tst.json"

for i in range(10):
    f = open(FileName, "a")
    print("opening File: " + FileName) # Debug

    adisk = {"Sensor":"Temperature", "temp":50+i}
    f.write(json.dumps(adisk) + "\n")
    print("Writing to file...") # Debug

    f.close()
    print("closing file...") # Debug