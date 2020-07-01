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
         empHours=8 ;;
      $isPartTime)
         empHours=4 ;;
      *)
         empHours=0 ;;
      esac
      echo $empHours
}

function getEmpWage()
{
	local empHours=$1
	echo $(($empHours*$empRatePerHour))
}

while (( $totalEmpHours -lt $maxHoursInMonth && $totalWorkingDays -lt $minWorkingDays ))
do
   ((totalWorkingDays++))
   empHours="$( getWorkingHours $employeeCheck )"
   totalEmpHours=$(($totalEmpHours+$empHours))
	dailyWage[$totalWorkingDays]=$(($empHours*$empRatePerHour))
done
totalSalary=$(($totalEmpHours*$empRatePerHour))

