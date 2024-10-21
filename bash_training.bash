#!/bin/bash

######
#Author: Deepak
#date : 19/10/24
#This script output the node
#Version 1
########

set -x #Debug Mode
#set -e #exit the script when there is error
set -o pipefail

#echo "Print the Disk Space"
df -h
echo "Print the Memory Space"
free -g
echo "Print the Process Space"
nproc

ps -ef | grep "bin" | awk -F" " '{print $2}'