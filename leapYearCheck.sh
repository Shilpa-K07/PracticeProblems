#!/bin/bash -x

read -p "Enter the value " value

if [ $value -lt 1000 ]
then
echo "enter 4 digit NUmber"

elif [ $(($value%4)) -eq 0 ] && [ $(($value%400)) -eq 0 ]
then
   echo "Leap year"

else
	echo "Not Leap Year"
fi 
