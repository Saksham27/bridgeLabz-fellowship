#!/bin/bash -x
read -p "Enter the starting value : " startNumber
read -p "Enter the ending value : " endNumber
for (( i=startNumber; i<=endNumber; i++))
do
	if [ $i -le 1 ]
	then
		continue
	else
		primeCounter=0
		for (( counter=2; counter<=i/2; counter++))
		do
			if [ $(($i%$counter)) -eq 0 ]
			then
				((primeCounter++))
			fi
		done

		if [ $primeCounter -eq 0 ]
		then
			echo $i
		fi
	fi
done
