#!/bin/bash -x
read -p "Enter the size" N
i=0
sum=0
avg=0

while [ $i -lt $N ]
do
input=$((RANDOM%100))

	if [ $input -le 10 ]
	then
		input=$(($input+10))
	fi

sum=$(($sum+$input))
i=$((i+1))
done

echo "sum is :" $sum
average=`echo $sum $N | awk '{if($2>0) print $1/$2}'`
echo "Average is: "$average

