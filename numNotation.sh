#!/bin/bash -x

read -p "Enter number" num

if [ $num -eq 1 ]
then
	echo "Unit"
elif [ $num -eq 10 ]
then
	echo "ten"
elif [ $num -eq 100 ]
then
	echo "hundred"
elif [ $num -eq 1000 ]
then
	echo "Thousand"
fi
