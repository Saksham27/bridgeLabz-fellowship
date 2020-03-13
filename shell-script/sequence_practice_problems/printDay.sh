#!/bin/bash -x

read -p "Input Date using / as seperator: " FULL_DATE
year=`echo $FULL_DATE | awk -F/ '{print $3}'`
month=`echo $FULL_DATE | awk -F/ '{print $2}'`
date=`echo $FULL_DATE | awk -F/ '{print $1}'`

tempYear=$(( $year-(14-$month)/12))
x=$(( $tempYear+$tempYear/4-$tempYear/100+$tempYear/400 ))
tempMonth=$(( $month+12*((14-$month)/12)-2 ))
tempDate=$(( ($date+$x+31*$tempMonth/12)%7 ))

case $tempDate in
	0)
		echo "Sunday";;
	1)
		echo "Monday";;
	2)
		echo "Tuesday";;
	3)
		echo "Wednesday";;
	4)
		echo "Thrusday";;
	5)
		echo "Friday";;
	6)
		echo "Saturday";;
esac
