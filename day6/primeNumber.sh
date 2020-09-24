#!/bin/bash -x

read -p "Enter Number" n

count=0
if [ $n -eq 0 ] || [ $n -eq 1 ]
then
	echo "Not Prime"
fi

for ((i=2;i<$n;i++))
do
	if [ $(($n%i)) -eq 0 ]
	then
		count=1
		break
	fi
done

if [ $count -eq 0 ]
then
	echo "Prime"
else
	echo "Not Prime"
fi

