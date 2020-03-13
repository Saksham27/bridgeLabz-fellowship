#!/bin/bash -x
headWins=0
tailWins=0
while [ $headWins -ne 11 ] && [ $tailWins -ne 11 ]
do
	echo Tossing the coin.............
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		echo Heads
		((headWins++))
	else
		echo Tails
		((tailWins++))
	fi
done
echo "Head Wins : $headWins"
echo "Tail Wins : $tailWins"
