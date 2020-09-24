#!/bin/bash -x

read -p "Enter range1" n1
read -p "Enter range2" n2

count=0
for ((j=n1;j<=n2;j++))
do
	count=0
	if [ $j -eq 0 ] || [ $j -eq 1 ]
	then
		echo "$j is Not Prime"
	else

		for ((i=2;i<$j;i++))
		do
			if [ $(($j%$i)) -eq 0 ]
			then
				count=1
				break
			fi
		done

		if [ $count -eq 0 ]
		then
			echo "$j is Prime"
		else
			echo "$j is Not Prime"
		fi
	fi
done
