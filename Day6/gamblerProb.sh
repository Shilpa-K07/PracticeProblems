#!/bin/bash -x

amount=100
won=0
bets=0
while [ $amount -lt 200 ] && [ $amount -gt 0 ]
do
	bets=$(($bets+1))
	randomValue=$((RANDOM%2))
	if [ $randomValue -eq 1 ]
	then
		amount=$((amount+1))
		won=$(($won+1))
	else
		amount=$((amount-1))
	fi

	if [ $amount -eq 200 ] || [ $amount -eq 0 ]
	then
		echo "Number of times won: " $won
		echo "Number of Bets Made: "$bets	
	fi
done
