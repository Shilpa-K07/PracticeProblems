#!/bin/bash -x

read -p "Enter Number: " num

#Feet to inch
feetToInch=$(($num*12))
echo "feetToInch: "$feetToInch

#Feet to Meter
feetToMeter=`echo $num | awk '{print $1*0.3048}'`
echo "feetToMeter: "$feetToMeter

#Inch to Feet
inchToFeet=`echo $num | awk '{print $1/12}'`
echo "inchToFeet: "$inchToFeet

#Meter to Feet
meterToFeet=`echo $num | awk '{print $1/0.3048}'`
echo "meterToFeet: "$meterToFeet
