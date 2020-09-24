#!/bin/bash  

read -p "Enter Size" n

i=0
while [ $i -lt $n ]
do
	randomNum=$((RANDOM%1000))
	if [ $randomNum -lt 100 ]
	then
	randomNum=$(($randomNum+100))
	fi
	arr[$i]=$randomNum
	i=$((i+1))
done

function secondSmallest
{
firstSmallest=999
secondSmallest=999
for val in ${arr[@]}
do
	if [ $val -lt $firstSmallest ]
	then
		secondSmallest=$firstSmallest
		firstSmallest=$val
	elif [ $val -lt $secondSmallest ] && [ $val -ne $firstSmallest ]
	then
		secondSmallest=$val
	fi
done
echo "Elemements of array:" ${arr[@]}
echo "Second Smallest element is: " $secondSmallest
}

function secondLargest
{
firstLargest=0
secondLargest=0
for val in ${arr[@]}
do
   if [ $val -gt $firstLargest ]
   then
      secondLargest=$firstLargest
      firstLargest=$val
   elif [ $val -gt $secondLargest ] && [ $val -ne $firstLargest ]
   then
      secondLargest=$val
   fi
done
echo "Elemements of array:" ${arr[@]}
echo "Second Largest element is: " $secondLargest
}
secondSmallest ${arr[@]}
secondLargest ${arr[@]}
