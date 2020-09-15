#!/bin/bash -x

randomNum=$(($RANDOM%6))

if [ $randomNum -eq 0 ]
then
	echo "Sunday"
elif [ $randomNum -eq 1 ]
then
        echo "Monday"
elif [ $randomNum -eq 2 ]
then
        echo "Tuesday"
elif [ $randomNum -eq 3 ]
then
        echo "Wednesday"
elif [ $randomNum -eq 4 ]
then
        echo "Thursday"
elif [ $randomNum -eq 5 ]
then
        echo "Friday"
elif [ $randomNum -eq 6 ]
then
        echo "Saturday"
fi
