#! /bin/bash

read -p "Enter the last power of 2 to be displayed: " n

count=0

while [ $count != $(( n + 1 )) ]
do
        if [ $count -eq 0 ]
        then
        value=1
        else
        value=$(( value * 2 ))
        fi
echo -n " 2 raised to $count is $value "
printf "\n"
(( count++ ))
done
