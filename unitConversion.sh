#!/bin/bash -x

echo "Converting inch to foot"

inchTofoot=`awk 'BEGIN{print 42/12}'`
echo $inchTofoot

echo " Converting feet to meter"

lengthToMeter=`awk 'BEGIN{print 60/3.2808}'`
widthToMeter=`awk 'BEGIN{print 40/3.2808}'`
echo "length: "$lengthToMeter "width: "$widthToMeter

area=`echo $lengthToMeter $widthToMeter | awk '{print $1 * $2 * 25}'`
echo "Area is: "$area

