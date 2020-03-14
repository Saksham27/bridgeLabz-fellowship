#!/bin/bash -x

function checkPrime() {
	local count=0
	for (( i=2; i<$1; i++ ))
	do
		if [ $(($1%2)) -eq 0 ]
		then
			((count++))
		fi
	done
	if [ $count -eq 0 ]
	then
		echo true
	else
		echo false
	fi
}

read -p "Enter a number : " num
isNumPrime=$( checkPrime $num )
