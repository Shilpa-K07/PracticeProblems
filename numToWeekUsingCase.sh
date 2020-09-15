#!/bin/bash -x

randomNum=$(($RANDOM%6))

case $randomNum in
	0)
	echo "Sunday"
	;;
	1)
   echo "Monday"
   ;;
	2)
	echo "Tuesday"
	;;
	3)    
	echo "Wednesday"
	;;
	4)     
   echo "Thursday"
	;;
	5)
   echo "Friday"
	;;
   *)
	echo "Saturday"
	;;
esac

