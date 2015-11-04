#!/bin/bash

#######################################################################
#
#       Written by Joel E White
#
#       The script puts load on the server to test how well it handles
#
#       The log files will over write themselves when the script is re-initialized
#
#	This script calls two other scripts and was setup to run as root
#		Modify as neccessary
#
####################################################################### 

./stress_test_log.sh & 
./stress_test_load.sh & 

echo "To stop kill ps labeled stress_test_lo* "

echo "ps for stress_test_log.sh" > /root/stress_test.ps
echo `ps -eF | grep stress_test_log.sh` >> /root/stress_test.ps 

echo "ps for stress_test_load.sh" >> /root/stress_test.ps
echo `ps -eF | grep stress_test_load.sh` >> /root/stress_test.ps

echo "Look at /root/stress_test.ps for current process information"
