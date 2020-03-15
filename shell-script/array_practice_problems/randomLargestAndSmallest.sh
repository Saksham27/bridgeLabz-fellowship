#!/bin/bash -x

largest=0
secondLargest=0
smallest=9999
secondSmallest=9999

# function to generate random number
function generateRandom() {
	local temp=$((RANDOM%1000))
	if [ $temp -gt 99 ] && [ $temp -le 999 ]
	then
		echo $temp
	fi
}

# generating 10 random and storing them in array and giving second largest and smallest
for (( i=0; i<10; i++ ))
do
	randomArray[i]=$( generateRandom )

	if [ ${randomArray[i]} -gt $largest ] # setting second largest
	then
		secondLargest=$largest
		largest=${randomArray[i]}
	elif [ ${randomArray[i]} -gt $secondLargest ]
	then
		secondLargest=${randomArray[i]}
	fi

	if [ ${randomArray[i]} -lt $smallest ] # setting second smallest
	then
		secondSmallest=$smallest
		smallest=${randomArray[i]}
	elif [ ${randomArray[i]} -lt $secondSmallest ]
	then
		secondSmallest=${randomArray[i]}
	fi
done

echo ${randomArray[@]}
echo "Second Smallest : $secondSmallest" 
echo "Second Largest : $secondLargest"
