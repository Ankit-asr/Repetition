#! /bin/bash
MAXF=212
MINF=32
MAXC=100
MINC=0


function withinrange()
{
local type=$1
local degC=0
local degF=0

   case $type in
         1)
         read -p "Enter temperature in degree F :  " degF
         if [ $degF -le $MAXF ] && [ $degF -ge $MINF ]
         then
            echo $degF

      else
            echo 0
            exit

         fi ;;

         2)
         read -p "Enter temperature in degree C :  " degC
         if [ $degC -le $MAXC ] && [ $degC -ge $MINC ]
         then
            echo $degC
         else
            echo 0
            exit
         fi;;

      esac

}


function convertedresult()

{
local process=$1
local convertdeg=$2

   if [ $process -eq 1 ]
   then
      Centigrade=$(( ($convertdeg-32)  * 5 / 9 ))
      echo $Centigrade
   else
      Fahrenheit=$(( ($convertdeg * 9/5) + 32 ))
      echo $Fahrenheit
   fi


}



read -p "Enter 1 if you want to convert from degree F to degree C and
         2 if you want to convert from degree C to degree F" type


measure="$( withinrange $type )"

if [ $type -eq 1 ] && [ $measure -ne 0 ]
then
      convertedresult="$( convertedresult $type $measure )"
   echo "Measure in degree C is $convertedresult "

elif [ $type -eq 2 ] && [ $measure -ne 0 ]
then
   convertedresult="$( convertedresult $type $measure )"
   echo "Measure in degree F is $convertedresult "

else
   echo "Not a valid input"
fi
