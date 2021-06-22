#!/bin/bash

read -p "Enter a number: " num
check=0
fail=1
for (( counter=2; counter<$num; counter++ ))
do
        if [ $(( num%counter )) -eq 0 ]
        then
        fail=$((fail + 1 ))
        else
        check=$(( check + 1))
        fi


done

        if [ $check -eq $(( $num - 2 )) ]
        then
                echo "Number is prime "
        else
                echo "Not a prime number, $num is divisible by $fail numbers less than itself"
        fi
