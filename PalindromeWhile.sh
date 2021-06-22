#! /bin/bash


function palindromechk()

{
local input=$1
divisor=1

while [ `echo "scale=0;$input/$divisor" | bc -l` -ge 10 ]
	do
		divisor=`echo "scale=0; $divisor * 10 " | bc -l`
	done  
#divisor is set for the MSB

		while [ $input!=0 ] 
		do
			leading=`echo "scale=0;($input/$divisor)" | bc -l `
			trailing=`echo "scale=0; $(( $input%10 ))"| bc -l`

			if [ $leading != $trailing ]
			then
				checkresult=0
				echo $checkresult
 				exit 
			else
				input=`echo "scale=0; $(($input%$divisor))/10" | bc -l`
				divisor=`echo "scale=0; $divisor / 100 " | bc -l`
				checkresult=1
				if [ $input -eq 0 ] && [ $divisor -eq 0 ]
				then
				echo $checkresult
				exit 
				fi
		   fi

		done 

echo $checkresult

}

function prime()
{

local num=$1
check=0
for (( counter=2; counter<num; counter++ ))
do
	if [ $(( num%counter )) -eq 0 ]
	then
	check=$((check)) 
	else
	check=$(( check + 1))
	fi
	
	 
done

	if [ $check -eq $(( $num - 2 )) ]
	then
		echo 1
	else 
		echo 0
	fi

}

read -p "Enter a number: " num1

checkresult="$( palindromechk $num1 )"
primeresult="$( prime $num1 )"

if [[ $checkresult -eq 1 ]] && [[ $primeresult -eq 1 ]]
then
	echo " The number is a prime palindrome. "
elif [[ $checkresult -eq 1 ]] && [[ $primeresult -ne 1 ]]
	then
	echo "Palindrome but not prime "
elif [[ $checkresult != 1 ]] && [[ $primeresult -eq 1 ]]
	then
	echo "Not a palindrome but prime"
else
	echo "Neither a palindrome nor prime"
fi
