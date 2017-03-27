#!/bin/bash

for srv in $(echo "192.168.2.20 192.168.2.21 192.168.2.22 192.168.2.23 192.168.2.24")
do
   echo "Uploading test to ... $srv"
   find ./test/ -exec curl --ftp-create-dirs -T {} ftp://${srv}/home/hd1/{} \; 

done
