#! /bin/bash

read -p "Enter the last power of 2 to be displayed: " n 

for (( counter=0; counter<=$n; counter++ ))  
do

      if [ $counter -eq 0 ]	
      then				     
           value=1
      else
           value=$(( value * 2 ))               
      fi
              				  
        

echo " 2 raised to $counter = $value "

done
