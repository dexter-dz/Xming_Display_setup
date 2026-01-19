#!/usr/bin/env bash
echo "welcome $USER"
echo "Checking the assigned Octate"
cat /etc/resolv.conf | grep nameserver
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0
echo "echo testing Display..."
echo "Testing by Launching xcalc...... "
xcalc
echo "Hey $USER if Calculator didn't launch check whether you launched Xming with -ac"
echo "If The Calculator launched successfully you are all set to launch GUI Apps"
echo Type the command below to set your Display
echo "export DISPLAY=$DISPLAY"
