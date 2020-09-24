#!/bin/bash 

read -p "Enter Number " num

function checkPrime
{
count=0
n=$1
if [ $n -eq 0 ] || [ $n -eq 1 ]
then
   echo "$1 is Not Prime"
fi

for ((i=2;i<$n;i++))
do
   if [ $(($n%i)) -eq 0 ]
   then
      count=1
      break
   fi
done

if [ $count -eq 0 ]
then
   result=1
else
   result=0
fi
echo $result
}

function checkPalindrome 
{
rev=0
n=$1
while [ $n -gt 0 ]
do
   digit=$(($n%10))
   rev=$((rev*10+$digit))
   n=$(($n/10))
done

if [ $rev -eq $1 ]
then
	echo "$1 is Palindrome"
	result="$( checkPrime $rev )"
	if [ $result -eq 1 ]
	then
		echo " palindrome is also prime"
	fi
else
	echo "$1 Not Palindrome"
fi
}

result="$( checkPrime $num )"
if [ $result -eq 1 ]
	then
		echo "$num is prime"
		 checkPalindrome $num
fi	
