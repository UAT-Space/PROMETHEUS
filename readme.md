# PROMETHEUS
![](UAT%20SPACE.svg)
###### If you need to contact me do it [here](mailto:AndrewRLong02@gmail.com). <br> My advice is to entirely remake the build system

### Buildroot
This is the build system for linux that runs on a raspberry pi zero w.  
The python scripts that get data from the hardware are in ./overlay/usr/local/bin/ins.py.  
The script that starts data collection and video recording is at ./overlay/etc/init.d/S91set, the functions of the script has been disabled as data and video were manualy started.  
<br>
The external temperature probe and gps were removed from the scripts because of time constraints.

***DO NOT RE-INIT, YOU WILL LOSE THE KERNEL AND SYSTEM CONFIG. IF THIS HAPPENS YOU WILL HAVE TO REDO ALMOST EVERYTHING.***

### PCBS
The folder "Flight_Comp" contains the custom hat for the raspberry pi zero w.
