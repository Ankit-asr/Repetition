#!/bin/bash

read -p "Enter the lower limit: " lowerlimit
read -p "Enter the upper limit: " upperlimit

for (( num=$lowerlimit; num<=$upperlimit; num++ ))

do

check=0

for (( counter=2; counter<$num; counter++ ))
do
        if [ $(( num%counter )) -eq 0 ]
        then   
        	check=$(( check + 1))
        fi


done

        if [ $check -eq $(( $num - 2 )) ]
        then
                echo -n "$num "

        fi


done
