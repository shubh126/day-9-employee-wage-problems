#!/bin/bash -x
isFullTime=2
ispartTime=1
empRatePerHour=20
x=$(( RANDOM%3 ))
if [ $x -eq $isFullTime ]
then
   empHours=10
elif [ $x -eq $isPartTime ]
then
	empHours=8
else
	echo "Employee is absent"
	empHours=0
fi

salary=$(($empRatePerHour*$empHours))
echo $salary
