#!/bin/bash -x

read -p "Enter Number " n

n_cpy=$n
count=0
flag=0
for((j=2;j<$n;j++))
do
	count=0
	for((i=2;i<$j;i++))
	do
	#checking if no is prime or not
      if [ $(($j%$i)) -eq 0 ]
      then
         count=1
         break
		fi
	done

	if [ $count -eq 0 ]
   then
		flag=0
		echo " $j is prime"
		while [ $n_cpy -gt 0 ]
		do
		res=$(($n_cpy%$j))
			if [ $res -eq 0 ]
			then
				n_cpy=$(($n_cpy/$j))
				flag=$((flag+1))
			else
				break
         fi 
		done
		if [ $flag -gt 0 ]
		then
		 result+="$j^$flag*"
		fi
   fi
	if [ $n_cpy -eq 1 ]
	then
		echo "Factors of $n: " $result
		break;
	fi
done

