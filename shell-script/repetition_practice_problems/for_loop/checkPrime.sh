#!/bin/bash -x
read -p "Enter the number : " number
if [ $number -le 1 ]
then
	echo Not a prime number
else
	primeCounter=0
	for (( counter=2; counter<number/2; counter++))
	do
		if [ $(($number%$counter)) -eq 0 ]
		then
			((primeCounter++))
		fi
	done

	if [ $primeCounter -eq 0 ]
	then
		echo $number is Prime
	else
		echo Not a prime number
	fi
fi
