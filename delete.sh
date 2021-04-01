#!/bin/sh
zenity --entry --title="DELETION" --text="ENTER THE NAME YOU WANT TO DELETE" >temp.txt;
t=$(cat temp.txt)
grep "$t" address.txt > temp.txt
f=$(cat temp.txt)
if [ $f = '']
then
zenity --error --title=" UNFORTUNATE " --text=" RECORD NOT FOUND" 
else
grep -vE $t address.txt > temp.txt
cp temp.txt address.txt
zenity --info --title="DONE" --text="DELETION SUCESSFUL"
fi
exit 0
