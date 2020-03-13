#!/bin/bash -x
read -p "Enter Number : " n
temp=0
i=0
while [ $temp -ne 256 ] 
do
	temp=$((2**$i))
	((i++))
done
