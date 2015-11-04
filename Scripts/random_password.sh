#!/bin/bash

length=${1:-8}

< /dev/urandom tr -dc A-Za-z0-9_\; | head -c${length}; echo

## Run watch './random_password.sh ' to see the password change every 2 seconds
