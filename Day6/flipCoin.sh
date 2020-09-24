#!/bin/bash -x

head=0
tail=0
while [ $head -lt 11 ] || [ $tail -lt 11 ]
do
	randomNum=$((RANDOM%2))
	if [ $randomNum -eq 1 ]
	then
 		head=$(($head+1))
			if [ $head -eq 11 ]
			then
				echo "Head won "
				break
			fi
	else
 		tail=$(($tail+1))
		if [ $tail -eq 11 ]
		then
			echo "Tail Won"
			break
		fi
	fi
done
