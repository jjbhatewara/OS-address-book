#!/bin/sh
a=$(cat address.txt)
zenity --list --title="RECORD DISPLAY" \
--column "NAME" \
--column "PHONE NUMBER" \
--column " CITY "     \
$a --height=300 \
--width=350 
exit 0

