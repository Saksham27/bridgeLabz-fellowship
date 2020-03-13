#!/bin/bash -x
echo -------- UNIT CONVERTER------------
echo Options-
echo 1. Feet to Inch
echo 2. Inch to Feet
echo 3. Feet to Meter
echo 4. Meter to Feet
read -p "Your Choice : " choice

case $choice in
	1)
		read -p "Enter Feet : " feet
		inch=$(($feet*12))
		;;
	2)
		read -p "Enter Inch : " inch
		feet=`echo "scale=2; ($inch/12)" | bc`
		;;
	3)
		read -p "Enter Feet : " feet
		meter=`echo "scale=2; ($feet*0.3048)" | bc`
		;;
	4)
		read -p "Enter Meter : " meter
		feet=`echo "scale=2; ($meter*3.2808)" | bc`
		;;
	*)
		echo Wrong choice
esac
