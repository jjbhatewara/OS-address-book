#!/bin/sh
zenity --entry --title=" SEARCHING" --text="ENTER THE NAME YOU WANT TO FIND " >temp.txt;
fin=$(cat temp.txt)
grep "$fin" address.txt > temp.txt
f=$(cat temp.txt)
if [ $f = '']
then
zenity --error --title=" UNFORTUNATE " --text=" RECORD NOT FOUND" 
else
zenity --list --title="RECORD  FOUND" --column "NAME" --column "PHONE NUMBER" --column " CITY " $f --height=300 --width=350
fi
exit 0
