#!/bin/bash -x

# function to take array from user
function createArray() {
	arrayLength=0
	echo "Enter elements : "
	while [ $arrayLength -lt $n ]
	do
		read userArray[arrayLength++]
	done
}

# function to check sum to zero
function sumToZero() {
	length=0
	for (( i=0; i<$arrayLength; i++ ))
	do
		for (( j=$(($i+1)); j<$arrayLength; j++ ))
		do
			for (( k=$(($j+1)); k<$arrayLength; k++ ))
			do
				if [ $((${userArray[i]}+${userArray[j]}+${userArray[k]})) -eq 0 ]
				then
					resultArray[length++]=$( echo "${userArray[i]} ${userArray[j]} ${userArray[k]} " )
				fi
			done
		done
	done
}

read -p "Enter the no of elements : " n

# taking elements from user
createArray $n

# checking user inputted array for triplets adding to zero
sumToZero ${userArray[@]} arrayLength

# displayin the triplets
echo triplets with sum to zero are : ${resultArray[@]}
