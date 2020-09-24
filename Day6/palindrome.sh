#!/bin/bash -x

read -p "Enter Number" n1
read -p "Enter another number" n2

rev=0
function palindromeCheck
{
	n=$1
while [ $n -gt 0 ]
do
	digit=$(($n%10))
	rev=$((rev*10+$digit))
	n=$(($n/10))
done

if [ $1 -eq $rev ]
then
	result="Palindrome"
else
	result="Not Palindrome"
fi
echo $result
}

res1="$( palindromeCheck $n1 )"
res2="$( palindromeCheck $n2 )"

echo "Number $n1 is " $res1
echo "Number $n2 is " $res2

