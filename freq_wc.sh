#!/bin/bash
if [ $# -eq 0 ]
  then
	    echo "No arguments supplied"
fi
tr '[:upper:]' '[:lower:]' <$1> temp1.txt
sed 's/[\._!@#$%^&*0-9(),-]//g' temp1.txt > temp2.txt
tr ' ' '\n' < temp2.txt > temp3.txt
sort temp3.txt | uniq -c > temp4.txt
sort -n -r temp4.txt
rm temp1.txt temp2.txt temp3.txt temp4.txt