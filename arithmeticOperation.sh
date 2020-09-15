#!/bin/bash -x

read -p "Enter number1 " num1
read -p "Enter number2 " num2
read -p "ENter number3 " num3

res1=$(($num1+$num2*$num3))
echo $res1

res2=$(($num1%$num2+$num3))
echo $res2

res3=$(($num3+$num1/$num2))
echo $res3

res4=$(($num1*$num2+$num3))
echo $res4
