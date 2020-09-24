#!/bin/bash -x

start=0
end=100
echo "Think any number between 1 to 100"
n=0

function findMagicNumber
{
	num=$1
	if [ $(($num%9)) -eq 1 ]
	then
		echo "Your number is magic number"
	else
		echo "Your number is not a magic number"
	fi
}

while [ $n -eq 0 ]
do
	mid=$(($(($start+$end))/2))
	echo "1. Is your number equal to: "$mid
	echo "2. Is your number greater than "$mid
	echo "3. Is your number less than "$mid
	
	read -p  "Enter your option " option

	case $option in
	1)
		echo "Your number is:"$mid
		findMagicNumber $mid
		break
	;;
	2)
		start=$(($mid+1))
	;;
	3)
		end=$(($mid-1))
	;;
	*)
		echo " choose value 1 or 2 or 3 "
	;;
esac
done
