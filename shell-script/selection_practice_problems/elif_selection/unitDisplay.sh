#!/bin/bash -x
read -p "Enter number like 1 or 10 or 100 or ... : " number
if [ $number -eq 1 ]
then
	echo Unit
elif [ $number -eq 10 ]
then
	echo Ten
elif [ $number -eq 100 ]
then
	echo Hundred
elif [ $number -eq 1000 ]
then
	echo Thousand
elif [ $number -eq 10000 ]
then
	echo Ten Thousand
elif [ $number -eq 100000 ]
then
	echo Hundred Thousand
elif [ $number -eq 1000000 ]
then
	echo Million
elif [ $number -eq 10000000 ]
then
	echo Ten Million
elif [ $number -eq 100000000 ]
then
	echo Hundred Million
elif [ $number -eq 1000000000 ]
then
	echo Billion
fi
