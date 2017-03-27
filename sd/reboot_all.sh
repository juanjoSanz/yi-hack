#!/bin/bash

for srv in $(echo "192.168.2.20 192.168.2.21 192.168.2.22 192.168.2.23 192.168.2.24")
do
   echo "Restarting ... $srv"
   ./reboot.expect $srv 23 root 1234qwer 



done
