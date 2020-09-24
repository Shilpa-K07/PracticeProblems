#!/bin/bash -x 

index=0
for((i=0;i<100;i++))
do
	i_cpy=$i
	digit=$(($i%10))
		if [ $i_cpy -gt 10 ]
		then
		while [ $i_cpy -gt 0 ]
		do
			temp=$digit
			digit=$(($i_cpy%10))
			if [ $digit -eq $temp ]
			then
				i_cpy=$(($i_cpy/10))
				if [ $i_cpy -eq 0 ]
         	then
            	arr[$index]=$i
            	index=$(($index+1))
         	fi
				continue
			else
				break;
			fi
		done
fi
done
echo " repeated digits are: " ${arr[@]}
