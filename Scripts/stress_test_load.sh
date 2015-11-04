#!/bin/bash

#######################################################################
#
#       Written by Joel E White
#
#       The script puts load on the server using a program called stress 
#
#	You may need to install stress - apt-get install -y stress
#
#       This script is called by stress_test.sh
#               Modify as neccessary 
#
####################################################################### 

# Stress Tester
#apt-get install -y stress

echo "CTRL+C to stop"
while true; do stress -c 2 -v; sleep 30; done
