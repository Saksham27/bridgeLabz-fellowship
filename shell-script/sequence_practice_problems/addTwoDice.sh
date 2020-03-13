#!/bin/bash -x

echo Rolling first dice..............
dice1=$((RANDOM%6+1))
echo Rolling second dice..............
dice2=$((RANDOM%6+1))
sum=$(( $dice1 + $dice2 ))
