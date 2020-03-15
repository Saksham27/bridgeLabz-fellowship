#!/bin/bash -x

# function to generate random number
function generateRandom() {
	local temp=$((RANDOM%1000))
	if [ $temp -gt 99 ] && [ $temp -le 999 ]
	then
		echo $temp
	else 
		echo $( generateRandom )
	fi
}

# function to sort the array without changing the original array
function sortArray() {
	local counter=0
	tempArr=("$@")
	for (( i=0; i<10; i++ ))
	do
		for (( j=0; j<$((10-$i)); j++ ))
		do
			if [ ${tempArr[j]} -gt ${tempArr[$((j+1))]} ]
			then
				temp=${tempArr[j]}
				tempArr[j]=${tempArr[$((j+1))]}
				tempArr[$((j+1))]=$temp
			fi
		done
	done
	echo "${tempArr[@]}"
}

# generating 10 random and storing them in array
for (( i=0; i<10; i++ ))
do
	randomArray[i]=$( generateRandom )
done

# sorting the array
sortedArray=($( sortArray ${randomArray[@]} ))

echo Second Largest : ${sortedArray[8]}
echo Second Smallest : ${sortedArray[1]}
