#!/bin/bash -x

# function to check if a number is prime
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

# function to get palindrome of a number
function getPalindrome() {
	local temp=$1
	local sum=0
	while [ $temp -ne 0 ]
	do
		sum=$(( $(($sum*10+$temp%10)) ))
		temp=$(( $temp/10 ))
	done
	echo $sum
}

read -p "Enter a number : " num
isNumPrime=$( checkPrime $num )
numPalindrome=$( getPalindrome $num )
isNumPalindromePrime=$( checkPrime $numPalindrome )
if [ $isNumPrime = true ]
then
	echo "Number is Prime"
else
	echo "Number is not prime"
fi

if [ $isNumPalindromePrime = true ]
then
	echo "Palindrome of number is also Prime"
else
	echo "Palindrome of number is not prime"
fi
