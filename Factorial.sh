#! /bin/bash

read -p "Enter a number: " num

for (( counter=1; counter<=$num; counter++ ))
do
        if [ $counter -eq 1 ]
        then
                factorial=1
        else
                factorial=$(( factorial * counter ))
        fi

done

echo "Factorial of $num is $factorial. "
