#!/bin/bash -x

# function to validate input
function checkInput() {
	if [ $start -gt 0 ] && [ $start -lt $end ] && [ $end -le 100 ]
	then

		# Getting the repeated numbers
		repeatedDigitNumbers $1 $2

		# displayin repeated digit numbers stored in array
		echo Repeated digit Numbers : ${repeatedDigitArray[@]}
	else
		echo "Invalid input"
	fi
}

# function to find repeated digit numbers
function repeatedDigitNumbers() {
	length=0
	for (( i=$1; i<$2; i++ ))
	do
		temp=$i
		unitDigit=$(($unitdigit+$temp%10))
		temp=$(($temp/10))
		if [ $temp -eq $unitDigit ]
		then
			repeatedDigitArray[length++]=$i
		fi
	done
}

# taking input range
echo "Enter range from 0 to 100"
read -p "Starting point : " start
read -p "Ending point : " end

# validating input
checkInput start end


