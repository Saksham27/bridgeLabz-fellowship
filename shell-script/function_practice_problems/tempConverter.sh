#!/bin/bash -x
# Fucntion to take input
function takeInput() {
   local temp
   read -p "Temperature : " temp
   echo "scale=2; $temp" | bc
}

# Function to convert to Fahrenheit
function convertToFahrenheit() {
   echo "scale=2; $(( $1*9/5+32 ))" | bc 
}

# Function to convert to Celcius
function convertToCelcius() {
   echo "scale=2; $(( ($1-32)*5/9 ))" | bc
}

# Printing options for user
echo "CONVERSION OPTIONS :"
echo "1. to convert celcius into fahrenheit ( find degF )"
echo "1. to convert fahrenheit into celcius ( find degC )"
read -p "Yout Choice : " choice

case $choice in
	1)
		echo "Enter temperature in Celcius : "
		tempInCelcius=$(takeInput)
		if [ $tempInCelcius -ge 0 ] && [ $tempInCelcius -le 100 ] # input validation
		then 
			tempInFahrenheit=$(convertToFahrenheit tempInCelcius)
			echo "degC : $tempInCelcius"
      	echo "degF : $tempInFahrenheit"
		else
			echo "Invalid temprature"
		fi
		;;
	2)
		echo "Enter temperature in Fahrenheit : "
		tempInFahrenheit=$(takeInput)
		if [ $tempInFahrenheit -ge 32 ] && [ $tempInFahrenheit -le 212 ] # input validation
		then 
			tempInCelcius=$(convertToCelcius tempInFahrenheit)
			echo "degF : $tempInFahrenheit"
			echo "degC : $tempInCelcius"
		else
			echo "Invalid temprature"
		fi
		;;
	*)
		echo "wrong choice. Please select valid avalible option"
esac
