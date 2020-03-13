#!/bin/bash -x
firstNum=$((RANDOM%100))
secondNum=$((RANDOM%100))
thirdNum=$((RANDOM%100))
fourthNum=$((RANDOM%100))
fifthNum=$((RANDOM%100))

sum=$(($firstNum+$secondNum+$thirdNum+$fourthNum+$fifthNum));
avg=$(( ($firstNum+$secondNum+$thirdNum+$fourthNum+$fifthNum)/5 ));

