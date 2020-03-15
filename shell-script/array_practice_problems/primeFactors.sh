#!/bin/bash -x

# function to get prime factors of a number in an array
function primeFactors() {
	local num=$1
	arrLength=0
	for (( i=2; i<=$((num/2)); i++))
	do
		counter=0
		for (( j=2; j<i; j++ ))
		do
			if [ $(($i%$j)) -eq 0 ]
			then
				((counter++))
			fi
		done

		if [ $counter -eq 0 ] && [ $(($num%$i)) -eq 0 ]
		then
			primeFactorArr[arrlength++]=$i
		fi
	done
	echo ${primeFactorArr[@]}
}


read -p "Enter the number : " n
$( primeFactors $n )
