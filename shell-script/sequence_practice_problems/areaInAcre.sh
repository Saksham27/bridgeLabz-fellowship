#!/bin/bash -x

LENGTH=60
BREADTH=40
ONE_FEET=0.3048
ONE_METER=0.000247105
areaOfRectangle=$(($LENGTH*$BREADTH))
areaInMeter=`echo "scale=2; $areaOfRectangle*$ONE_FEET" | bc`
areaInAcre=`echo "scale=2; 25*$areaInMeter*$ONE_METER" | bc`
