#!/bin/bash -x
read -p "Enter the number : " num
for (( i=2; i<=num/2; i++))
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
		echo $i
	fi
done
