#!/bin/bash -x

randomCheck=$((RANDOM%2))

if [ $randomCheck -eq 0 ]
then	
	echo "Head"
else
	echo "Tail"
fi
