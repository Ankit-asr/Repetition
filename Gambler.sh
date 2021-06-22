#! /bin/bash

amount=100
wincheck=0
losscheck=0

while [ $amount -ne 0 -a $amount -ne 200 ]
do

result=$(( RANDOM%2 ))

        if [ $result -eq 1 ]
        then
                wincheck=$(( wincheck + 1 ))
                amount=$(( amount + 1 ))
        else
                losscheck=$(( losscheck + 1 ))
                amount=$(( amount - 1 ))
        fi
done

echo "Number of wins : $wincheck , number of losses : $losscheck "
echo " balance= $amount "

