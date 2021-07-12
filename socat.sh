#!/bin/bash
set -xv
sleep 60
socat /dev/ttyS0,raw,echo=0,crnl /dev/ttyACM0,raw,echo=0,crnl
