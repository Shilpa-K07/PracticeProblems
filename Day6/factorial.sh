#!/bin/bash -x

read -p " Enter Number " n

fact=1
if [ $n -eq 0 ]
then
	echo "Fact of $n is: "$fact
fi

for ((i=1;i<=$n;i++))
do
	fact=$(($fact*i))
done
	echo "Factorial of $n is: "$fact
