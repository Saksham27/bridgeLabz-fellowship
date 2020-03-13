#!/bin/bash -x
BET=1
GOAL=200
money=100
gamblesWon=0
gamblesLost=0
gamble=0
while [ true ]
gamble=$((RANDOM%2))
do
	if [ $gamble -eq 0 ] # loss condition
	then
		((gamblesLost++))
		money=$(($money-$BET))
	fi
	if [ $gamble -eq 1 ] # win condition
	then
		((gamblesWon++))
		money=$(($money+$BET))
	fi
	if [ $money -eq 0 ] # broke condition
	then
		echo You are broke
		break;
	fi
	if [ $money -eq 200 ] # goal reached condition
	then
		echo You reached your goal
		break;
	fi
done
echo "Money : $money"
echo "Won : $gamblesWon"
echo "Loss : $gamblesLost"
