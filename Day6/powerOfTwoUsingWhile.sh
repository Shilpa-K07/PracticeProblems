#!/bin/bash -x

read -p "Enter Number " n

i=1
res=1
while [ $i -lt $n ]
do
	res=$(($res*2))
	if [ $res -gt 256 ]
	then
		break
	fi
	echo "2^$i "$res
	i=$(($i+1))
done
