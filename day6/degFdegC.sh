#!/bin/bash -x

read -p "Enter Value in degree Celsius: " value
flag=0
function checkInputForC
{ 
 case $1 in
    [0-9]*)
			if [ $1 -gt 0 ] && [ $1 -lt 100 ]
			then
				flag=1
			fi
			;;
    		* )
			flag=0
			;;
 esac 
	echo $flag
}

function checkInputForF
{
 case $1 in
    [0-9]*)
         if [ $1 -gt 32 ] && [ $1 -lt 212 ]
         then
            flag=1
         fi
			;;
         * )
         flag=0
         ;;
 esac
   echo $flag
}


function calculateDegF
{
	degF=$(($(($1*9/5))+32))
	#var=$1
	#degF=`echo $var | awk '{print ($1*9/5)+32}'`
	echo $degF
}

function calculateDegC
{
   degC=$(($(($1-32))*5/9))
   #var=$1
	#degC=`echo $var | awk '{print ($1-21)*5/9}'`
	echo $degC
}


resC="$( checkInputForC $value )"
if [ $resC -eq 1 ]
then
	degF="$( calculateDegF $value )"
	echo " degF of "$value "is:" $degF
else
	echo "Enter value between 0 to 100"
fi

read -p "Enter value in Degree Farad" valueF
resF="$( checkInputForF $valueF )"
if [ $resF -eq 1 ]
then
   degC="$( calculateDegC $valueF )"
   echo " degC of "$valueF "is:" $degC
else
   echo "Enter value between 32 to 212"
fi

