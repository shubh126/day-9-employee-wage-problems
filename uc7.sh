#!/bin/bash -x

isPartTime=1
isFullTime=2
maxHoursInMonth=10
empRatePerHour=20
minWorkingDays=20
totalEmpHours=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
      $isFullTime)
         workHours=8 ;;
      $isPartTime)
         workHours=4 ;;
      *)
         workHours=0 ;;
      esac
      echo $workHours
}



while (( $totalWorkHours -lt $maxHoursInMonth && $totalWorkingDays -lt $minWorkinDays ))
do
   ((totalWorkingDays++))
   workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
done
totalSalary=$(($totalWorkHours*$empRatePerHour))

