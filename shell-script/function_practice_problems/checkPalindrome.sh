#!/bin/bash -x

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

read -p "Enter first number : " num1
read -p "Enter second number : " num2

num1Palindrome=$( getPalindrome $num1 )
