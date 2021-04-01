#!/bin/sh
zenity --forms --title=" ADDRESS BOOK " \
--text="Add new data" \
--separator=" " \
--add-entry=" First Name "  \
--add-entry=" PHONE NUMBER " \
--add-entry=" CITY "  >> address.txt;
#zenity --entry --title="ADDITION" --text="NAME?" >temp.txt;
#name=$(cat temp.txt)
#zenity --entry --title="ADDITION" --text="ROLL NUMBER ?        " >temp.txt;
#rollno=$(cat temp.txt)
#zenity --entry --title="ADDITION" --text="   CITY ?    " >temp.txt;
#city=$(cat temp.txt)
#echo " $name  $rollno  $city " >> address.txt
 zenity --info --title="DONE" --text="DATA ADDED SUCCESSFULLY"
exit 0
