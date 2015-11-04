#!/bin/bash

#######################################################################
#
#	Written by Joel E White
#
#	The script check uptime every 10 seconds and logs it
#
#	This was made to test runtime on various batteries
#
#	The log file will over write itself when the script is re-initialized
#
#######################################################################

## Initialize battery_test.log
echo > /root/battery_test.log

## Run infinate loop capturing runtime and load every 10 seconds

echo "To Stop Press CNTL+C"

while true;

do echo `uptime` >> /root/battery_test.log;

sleep 10;

done

