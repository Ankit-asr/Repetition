#! /bin/bash

read -p "Enter the last harmonic number of the series : " n

for (( counter=1; counter<=n; counter++ ))
do
	if [ $counter -eq 1 ]
	then
	value=1
	else
	fraction=`echo " 1/$counter"`
	value=`echo "$value + $fraction "`
	fi

done
echo " The value of the harmonic series is $value "
