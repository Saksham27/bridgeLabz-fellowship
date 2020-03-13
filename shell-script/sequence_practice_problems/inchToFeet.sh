#!/bin/bash -x

oneFeet=`echo "scale=2; 1/12" | bc`
echo 42 inch = `echo "scale=2; 42*$oneFeet" | bc`
