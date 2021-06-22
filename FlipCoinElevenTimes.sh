#! /bin/bash

nheads=0
ntails=0

while [ $nheads -lt 11 -a $ntails -lt 11 ]
do
status=$(( RANDOM%2 ))

        if [ $status -eq 1 ]
        then
        nheads=$(( nheads + 1 ))
        else
        ntails=$(( ntails + 1 ))
        fi

done
echo " HEADS occurred $nheads times , TAILS occurred $ntails times"
