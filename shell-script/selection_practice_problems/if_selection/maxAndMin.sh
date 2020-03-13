#!/bin/bash -x
count=1
while [ $count != 6 ]
do
	temp=$((RANDOM%1000))
	if [ $temp -ge 100 ] && [ $temp -le 999 ]
	then
		eval num$count=$temp;
		((count++));
	fi
done

max=$num1
min=$num1
# checking greatest number
if [ $num2 -gt $max ]
then
	max=$num2
fi

if [ $num3 -gt $max ]
then
	max=$num3
fi

if [ $num4 -gt $max ]
then
	max=$num4
fi

if [ $num5 -gt $max ]
then
	max=$num5
fi

# checking least number
if [ $num2 -lt $min ]
then
	min=$num2
fi

if [ $num3 -lt $min ]
then
	min=$num3
fi

if [ $num4 -lt $min ]
then
	min=$num4
fi

if [ $num5 -lt $min ]
then
	min=$num5
fi
echo "Values : $num1 $num2 $num3 $num4 $num5"
echo "Maximum Value : $max"
echo "Minumum Value : $min"
