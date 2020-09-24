#!/bin/bash 

declare -A dictionary

i=1

while [ $i -lt 51 ]
do
	bMonth=$(($RANDOM%12+1))
	bYear=$(($RANDOM%2+92))

	if [ $bMonth -eq 1 ]
	then
		dictionary["jan"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 2 ]
	then
		dictionary["feb"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 3 ]
	then
      		dictionary["mar"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 4 ]
   	then
      		dictionary["apr"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 5 ]
   	then
      		dictionary["may"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 6 ]
	then
      		dictionary["jun"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 7 ]
   	then
      		dictionary["jul"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 8 ]
   	then
      		dictionary["aug"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 9 ]
   	then
      		dictionary["sep"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 10 ]
	then
      		dictionary["oct"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 11 ]
   	then
      		dictionary["nov"]+="$i th person year-$bYear "
	elif [ $bMonth -eq 12 ]
   	then
      		dictionary["dec"]+="$i th person year-$bYear "
	fi
	i=$(($i+1))
done

echo "Jan: " ${dictionary["jan"]}
echo "feb: " ${dictionary["feb"]}
echo "mar: " ${dictionary["mar"]}
echo "apr: " ${dictionary["apr"]}
echo "may: " ${dictionary["may"]}
echo "Jun: " ${dictionary["jun"]}
echo "Jul: " ${dictionary["jul"]}
echo "aug: " ${dictionary["aug"]}
echo "sep: " ${dictionary["sep"]}
echo "oct: " ${dictionary["oct"]}
echo "nov: " ${dictionary["nov"]}
echo "dec: " ${dictionary["dec"]}
