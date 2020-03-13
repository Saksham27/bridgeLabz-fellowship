#!/bin/bash -x
echo "Take a number from 1 to 100 in your mind"
low=0
high=100
counter=1
while [ counter ]
do
	mid=$((($low+$high)/2))
	echo "->" Press 1 if your number is less than $mid
	echo "->" Press 2 if your number is greater than $mid
	echo "->" if $mid is your number Press 0 to exit
	read -p "Input : " userInput
	case $userInput in
		1)
			high=$((($high+$low)/2))
			;;
		2)
			low=$((($low+$high)/2))
			;;
		0)
			low=$mid
			high=$mid
			;;
	esac
	echo $low $high
	if [ $low -eq $high ] 
	then
		echo "your number $low"
		break;
	fi
done
