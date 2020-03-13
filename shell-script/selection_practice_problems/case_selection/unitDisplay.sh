#!/bin/bash -x
read -p "Enter number like 1 or 10 or 100 or ... : " number
case $number in
	 1)
		echo Unit;;
	10)
		echo Ten;;
	100)
		echo Hundred;;
	1000)
		echo Thousand;;
	10000)
		echo Ten Thousand;;
	100000)
		echo Hundred Thousand;;
	1000000)
		echo Million;;
	10000000)
		echo Ten Million;;
	100000000)
		echo Hundred Million;;
	1000000000)
		echo Billion;;
	*)
		echo TooLargeNumber;;
esac

