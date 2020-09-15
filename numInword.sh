#!/bin/bash -x

randomNum=$(($RANDOM%10))

if [ $randomNum -eq 0 ]
then
	echo "Zero"
elif [ $randomNum -eq 1 ]
then
        echo "One"
elif [ $randomNum -eq 2 ]
then
        echo "Two"
elif [ $randomNum -eq 3 ]
then
        echo "Three"
elif [ $randomNum -eq 4 ]
then
        echo "Four"
elif [ $randomNum -eq 5 ]
then
        echo "Five"
elif [ $randomNum -eq 6 ]
then
        echo "Six"
elif [ $randomNum -eq 7 ]
then
        echo "Seven"
elif [ $randomNum -eq 8 ]
then
        echo "Eight"
elif [ $randomNum -eq 9 ]
then
        echo "Zero"
fi
