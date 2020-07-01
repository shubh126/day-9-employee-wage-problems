#!/bin/bash -x
x=$(( RANDOM%2 ))
if [ $x -eq 1 ]
then
	empRatePerHour=20
	empHours=8
	salary=$(($empRatePerHour*$empHours))
   echo "Salary is:" $salary
else
   echo "Employee is absent"
fi

