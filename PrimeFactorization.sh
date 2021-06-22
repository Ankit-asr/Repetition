#! /bin/bash

function squareroot()

        {

local input=$1
i=1

        while [ $(( i*i )) -lt $input ]
        do
                i=$(( i+1 ))

        done

        if [[ $((i*i)) -gt $input ]]
        then
                i=$(( i - 1))
        fi

echo $i
}


function getexponent()

{

local number=$1
local sqrt=$2

        for (( counter=2; counter<=$(( sqrt )); counter=$(( $counter + 1 )) ))
        do
                if [ $(( $number % $counter )) -eq 0 ]
                then
                times=0
                        while [ $(( $number % $counter )) -eq 0 ]
                        do
                        times=$(( times + 1 ))
                        number=$(( $number / $counter ))
                        done
                        echo " $counter ^ $times "
                fi

                if [[ $number -eq 1 ]]
                then
                exit
                fi
        done

        if [[ $number -ne 1 ]]
        then
        echo "$number ^ 1 "
        fi
}


read -p "Enter the number whose factors are to be found: " num

echo "Prime factorization of $num is: "

sqrt="$( squareroot $num )"
echo "squareroot" $sqrt
getexponent $num $sqrt
