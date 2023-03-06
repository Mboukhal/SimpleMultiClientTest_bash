#!/bin/bash

ClientNumber=50

SERVER="10.11.13.6:8080"


Browser="/Applications/Firefox.app/Contents/MacOS/firefox"
# Firefox parameter need to use your browser arguments
Browser+=" --safe-mode"
Browser+=" --private-window"


CMD_ARGS=$Browser

while [ $ClientNumber -ne 0 ]; do

    CMD_ARGS+=" "
    CMD_ARGS+=$SERVER
    ClientNumber=$(( ClientNumber - 1 ))
done

bash -c "$CMD_ARGS"  2> /dev/null 1> /dev/null &
sleep 2
echo "Browser is running."
echo -n "Peress enter to EXIT Browser..."
read
pkill -f $Browser
