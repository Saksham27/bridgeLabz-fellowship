#!/bin/bash -x

LENGTH=60
BREADTH=40
ONE_FEET=0.3048
areaOfRectangle=$(($LENGTH*$BREADTH))
areaInMeter=`echo "scale=2; $areaOfRectangle*$ONE_FEET" | bc`
