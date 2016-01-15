#!/bin/bash

################################################################
#
#	A Script to stop all stress testing
#
#	Written by Joel E White
#
################################################################

echo "Stopping stress_test_load.sh"

killall stress_test_load.sh

echo

echo "Stopping all remaining stress processes"

killall stress

echo

echo "Stopping stress_test_log.sh"

killall stress_test_log.sh

echo

echo "All stress to the system should be stopped now"

echo

echo

echo "Checking ps for any straglers"

echo `ps -eF | grep stress`
