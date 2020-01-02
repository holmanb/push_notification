#!/bin/sh

# adapted from sysfs example found at:
# https://elinux.org/RPi_GPIO_Code_Samples

setup_pin(){
	echo "$1" > "/sys/class/gpio/export"             	# enable
	echo "$2" > "/sys/class/gpio/gpio$1/direction" 		# direction
	echo "/sys/class/gpio/gpio$1/value"			# print the filepath for reading/writing from
}
 

