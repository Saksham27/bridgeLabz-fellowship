#!/bin/bash -x
read -p "Enter first number : " num1
read -p "Enter second number : " num2
read -p "Enter three number : " num3
#a+b*c
operation1=`echo "scale=2; ($num1+$num2*$num3)" | bc`
#c+a/b
operation2=`echo "scale=2; ($num3+$num1/$num2)" | bc`
#a%b+c
operation3=`echo "scale=2; ($num1%$num2+$num3)" | bc`
#a*b+c
operation4=`echo "scale=2; ($num1*$num2+$num3)" | bc`
max=$operation1
min=$operation1
# cheking maximum
if [ $(echo "$operation2 > $max" | bc -l) -eq 1 ]
then
	max=$operation2
fi
if [ $(echo "$operation3 > $max" | bc -l) -eq 1 ]
then
	max=$operation3
fi
if [ $(echo "$operation4 > $max" | bc -l) -eq 1 ]
then
	max=$operation4
fi

# cheking minimum
if [ $(echo "$operation2 < $min" | bc -l) -eq 1 ]
then
	min=$operation2
fi
if [ $(echo "$operation3 < $min" | bc -l) -eq 1 ]
then
	min=$operation3
fi
if [ $(echo "$operation4 < $min" | bc -l) -eq 1 ]
then
	min=$operation4
fi

echo Maximum : $max Minimum : $min
