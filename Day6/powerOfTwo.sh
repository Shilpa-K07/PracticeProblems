#!/bin/bash -x

read -p " Enter a value " n

i=1
res=1
while [ $i -lt $n ]
do
	res=$(($res*2))
	echo "2^$i = "$res

i=$((i+1))
done
