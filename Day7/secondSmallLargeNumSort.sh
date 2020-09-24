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

echo "Before sorting" ${arr[@]}

function sort
{
    for((i=0;i<$n;i++))
    do
        for((j=((i+1));j<$n;j++))
        	do
            if [ ${arr[i]} -gt ${arr[j]} ]
            then
                tmp=${arr[i]}
                arr[i]=${arr[j]}
                arr[j]=$tmp         
            fi
        done
    done
}
sort ${arr[@]}
echo "After Sorting " ${arr[@]}
echo "Second smallest element: " ${arr[1]}
echo "Second largest element: " ${arr[$(($n-2))]}
