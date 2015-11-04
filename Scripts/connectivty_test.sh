#!/bin/bash

#######################################################################
#
#       Written by Joel E White
#
#       The script will check network connectivity
#
#       The script asks for the router IP and then goes through several tests
#
####################################################################### 

echo "Enter IP of Router"

read router

echo "Checking Network Connectivity"

echo

echo "Checking the Network Service"

echo

service networking status

echo

echo

echo "Pinging Localhost"

echo

ping -c 3 127.0.0.1

echo

echo "Pinging Router"
echo ${router}

echo

ping -c 3 ${router}

echo

echo "Pinging Google.com"

echo

ping -c 3 google.com

echo
