#!/bin/bash -x

x=$(( RANDOM%2 ))
if [ $x -eq 1 ]
then
	echo "employee present"
else
	echo "employee absent"
fi
