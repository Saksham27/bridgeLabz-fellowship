#!/bin/bash -x
read -p "Enter year : " year
if [ $year -ge 1000 ] && [ $year -le 9999 ]
then
	if [ $(($year%4)) -eq 0 ]
	then
		if [ $(($year%100)) -eq 0 ]
		then
			if [$(($year%400)) -eq 0 ]
			then
				echo "It's a Leap year"
			else
				echo "Not a leap year"
			fi
		else
			echo "It's a Leap year"
		fi
	else
		echo "Not a leap year"
	fi 
else
	echo "Enter valid 4 digit year"
fi
