#!/bin/bash 

count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

declare -A dictionary
declare -A secondDict
n=0
i=0
max=0
while [ $n -eq 0 ]
do
	randomNum=$((RANDOM%6+1))
	 dictionary[$i]=$randomNum
 	if [ $randomNum -eq 1 ]
	then
		count1=$(($count1+1))
		secondDict[1]=$count1
		if [ $count1 -eq 10 ]
		then
			max=$randomNum
			break
		fi
	elif  [ $randomNum -eq 2 ]
	then
		count2=$(($count2+1))
		secondDict[2]=$count2
		if [ $count2 -eq 10 ]
      then
			max=$randomNum  
         break
      fi
	elif  [ $randomNum -eq 3 ]
   then
      count3=$(($count3+1))
		secondDict[3]=$count3
		if [ $count3 -eq 10 ]
      then
			max=$randomNum  
         break
      fi
	elif  [ $randomNum -eq 4 ]
   then
      count4=$(($count4+1))
		secondDict[4]=$count4
		if [ $count4 -eq 10 ]
      then
			max=$randomNum 
         break
      fi
	elif  [ $randomNum -eq 5 ]
   then
      count5=$(($count5+1))
		secondDict[5]=$count5
		if [ $count5 -eq 10 ]
      then
			max=$randomNum 
         break
      fi
	elif  [ $randomNum -eq 6 ]
   then
      count6=$(($count6+1))
		secondDict[6]=$count6
		if [ $count6 -eq 10 ]
      then
			max=$randomNum 
         break
      fi
	fi
	i=$((i+1))
done

declare -A minDict
k=0
min=10
#To get number repeated minimum time
for key in ${!secondDict[@]}
do
	if [ ${secondDict[$key]} -lt $min ]
		then
		min=${secondDict[$key]}
	fi
done

#To check whether the other numbers also repeated for this many minimum time
for key in ${!secondDict[@]}
do
   if [ ${secondDict[$key]} -eq $min ]
      then
		minDict[$k]=$key
		k=$(($k+1))
   fi
done

echo "Dictionary of all the elements: " ${dictionary[@]}
echo "Dictionary of counts for number 1 to 6: " ${secondDict[@]}
echo Number $max is reached  maximun number 

echo ${minDict[@]} has reached minimun number
