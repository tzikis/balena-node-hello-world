#!/bin/bash
set -xv

#   Exports pin to userspace
echo "16" > /sys/class/gpio/export                  

# Sets pin 16 as an output
echo "out" > /sys/class/gpio/gpio16/direction

# Sets pin 16 to high
#echo "1" > /sys/class/gpio/gpio16/value

# Sets pin 16 to low
#echo "0" > /sys/class/gpio/gpio16/value 

while true
do
  echo "Checking for socat"
  pgrep -x socat >/dev/null && echo "1" > /sys/class/gpio/gpio16/value || echo "0" > /sys/class/gpio/gpio16/value
  sleep 5
done
