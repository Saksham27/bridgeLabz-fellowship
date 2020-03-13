#!/bin/bash -x
read -p "Enter the n : " n
harmonicNumber=0
for (( counter=1; counter<=n; counter++))
do
	harmonicNumber=`echo "scale=2; $harmonicNumber+1/$counter" | bc`;
done
echo Harmonic Number : $harmonicNumber
