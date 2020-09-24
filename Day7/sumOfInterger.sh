#!/bin/bash 

read -p " Enter the size of an array" size

i=0
while [ $i -lt $size ]
do
	read -p "Enter the elements of array " ele
	arr[$i]=$ele
	i=$((i+1))
done 

found=0
for ((i=0;i<$(($size-2));i++))
do
	for((j=i+1;j<$(($size-1));j++))
		do
			for((k=j+1;k<$size;k++))
				do
					sum=`echo ${arr[i]} ${arr[j]} ${arr[k]} | awk '{print $1+$2+$3}'`
					if [ $sum -eq 0 ]
					then
						found=1
						echo "Sum of integers ${arr[i]} ${arr[j]} ${arr[k]} is zero"
					fi
				done
		done
done
					
if [ $found -eq 0 ]
then
	echo "not exists"
fi
