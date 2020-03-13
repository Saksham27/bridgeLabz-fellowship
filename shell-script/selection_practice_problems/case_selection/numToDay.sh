#!/bin/bash -x
read -p "Enter a number from 1 to 7 : " number
if [ $number -ge 1 ] && [ $number -le 7 ]
then
	case $number in
		1)
			echo Sunday;;
		2)
			echo Monday;;
		3)
			echo Tuesday;;
		4)
			echo Wednesday;;
		5)
			echo Thursday;;
		6)
			echo Friday;;
		*)
			echo Saturday;;
	esac
else
	echo Enter valid single digit number
fi
