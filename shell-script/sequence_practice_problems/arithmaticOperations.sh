#!/bin/bash -x
read -p "Enter X : " x;
read -p "Enter Y : " y;
read -p "Enter Z : " z;
echo "X+Y*Z = "$(($x+$y*$z));
echo "Z+X/Y = "`echo "scale=2; ($z+$x/$y)" | bc`
echo "X%Y+Z = "$(($x%$y+$z));
echo "X*Y+Z = "$(($x*$y+$z));
