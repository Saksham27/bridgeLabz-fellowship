#!/bin/bash -x

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

# function to check IF 2 numbers are palindorme of each other
function checkPalindrome() {
	if [ $1 -eq $2 ]
	then
		echo "Both the numbers are palindrome of each other"
	else
		echo "Numbers are not palindrome"
	fi
}

read -p "Enter first number : " num1
read -p "Enter second number : " num2

num1Palindrome=$( getPalindrome $num1 )
checkPalindrome $num1Palindrome $num2
