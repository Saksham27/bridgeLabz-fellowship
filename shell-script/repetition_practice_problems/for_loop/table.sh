#!/bin/bash -x
read -p "Enter the n : " n
echo "---------Table for 2^$n-----------"
for (( counter=0; counter<=n; counter++))
do
	echo $((2**counter))
done
