#!/bin/bash -x

read -p "Enter value for day" day
read -p "Enter value for month" month

if [ $month -lt 3 ] || [ $month -gt 6 ] || [ $day -lt 1 ] || [ $day -gt 31 ]
then
		echo "FALSE"

elif [ $month -eq 3 ] && [ $day -lt 21 ] 
then
	echo "FALSE"

elif [ $month -eq 6 ] && [ $day -gt 19 ]
then
	echo "FALSE"

elif [ $month -eq 4 ] && [ $day -eq 31 ]
then
		echo "FALSE"
else
	echo "TRUE"
fi
