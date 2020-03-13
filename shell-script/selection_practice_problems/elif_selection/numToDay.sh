#!/bin/bash -x
read -p "Enter a number from 1 to 7 : " number
if [ $number -ge 1 ] && [ $number -le 7 ]
then
	if [ $number -eq 1 ]
	then
		echo Sunday
	elif [ $number -eq 2 ]
	then
		echo Monday
	elif [ $number -eq 3 ]
	then
		echo Tuesday
	elif [ $number -eq 4 ]
	then
		echo Wednesday
	elif [ $number -eq 5 ]
	then
		echo Thursday
	elif [ $number -eq 6 ]
	then
		echo Friday
	elif [ $number -eq 7 ]
	then
		echo Saturday
	fi
else
	echo Enter valid number between 1 to 7
fi
