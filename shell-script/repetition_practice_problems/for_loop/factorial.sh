#!/bin/bash -x
read -p "Enter number : " number
factorial=1
for (( counter=number; counter>=2; counter--))
do
	factorial=$(($factorial*$counter))
done
echo Factorial of $number : $factorial
