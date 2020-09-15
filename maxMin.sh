#!/bin/bash -x

read -p "Enter the size" N

i=0
max=0
min=999
while [ $i -lt $N ]
do
randomNum=$((RANDOM%1000))

#checking for 3 digit.If not 3 digit then making it 3 digit
if [ $randomNum -lt 100 ]
then
	randomNum=$(($randomNum+100))
fi
#checking ends here

if [ $randomNum -gt $max ]
then
max=$randomNum
fi

if [ $randomNum -lt $min ]
then
min=$randomNum
fi

i=$((i+1))
done

echo "max is: "$max
echo "min is : "$min
