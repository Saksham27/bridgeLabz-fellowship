#!/bin/bash -x
read -p "Enter date : " date
read -p "Enter Month : " month
if [ $month == "march" ] || [ $month == "March" ] || [ $month == "Mar" ] || [ $month == "mar" ] || [ $month == 3 ]
then
	if [ $date -gt 20 ] && [ $date -le 31 ]
	then
		echo "true"
	else
		echo "false"
	fi
elif [ $month == "april" ] || [ $month == "April" ] || [ $month == "Apr" ] || [ $month == "apr" ] || [ $month == 4 ]
then
	if [ $date -ge 1 ] && [ $date -le 30 ]
	then
		echo "true"
	else
		echo "false"
	fi
elif [ $month == "may" ] || [ $month == "May" ] || [ $month == "may" ] || [ $month == "May" ] || [ $month == 5 ]
then
	if [ $date -ge 1 ] && [ $date -le 31 ]
	then
		echo "true"
	else
		echo "false"
	fi
elif [ $month == "june" ] || [ $month == "June" ] || [ $month == "jun" ] || [ $month == "Jun" ] || [ $month == 6 ]
then
	if [ $date -ge 1 ] && [ $date -lt 20 ]
	then
		echo "true"
	else
		echo "false"
	fi
fi
