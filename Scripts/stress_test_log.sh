#!/bin/bash

#######################################################################
#
#       Written by Joel E White
#
#       The script logs the load being put on the server 
#
#       The log files will over write themselves when the script is re-initialized
#
#       This script is called by stress_test.sh
#               Modify as neccessary 
#
####################################################################### 

echo "CRTL+C to stop logging"

echo > /root/stress_test.log ; while true; do echo `uptime` &>> /root/stress_test.log; sleep 10; done

