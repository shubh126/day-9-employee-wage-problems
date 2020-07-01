#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=10
empRatePerHour=20
minWorkingDays=20
totalEmpHours=0
totalWorkingDays=0
while (( $totalEmpHours -lt $maxHoursInMonth && $totalWorkingDays -lt $minWorkinDays ))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
   case $empCheck in
	   $isFullTime)
   	   empHours=8 ;;
      $isPartTime)
         empHours=4 ;;
      *)
         empHours=0 ;;
      esac
   	totalEmpHours=$(($totalEmpHours+$empHours))
done
totalSalary=$(($totalEmpHours*$empRatePerHour))
