#!/bin/bash 

declare -a doubleDigits
ddCount=0
range=20

randomGen() {
    ran=$(($RANDOM % 101))
    echo $ran
}

ifDouble(){
    number=$1
    if (($(($number % 11 )) == 0))
    then
        echo "It's a double digit -> $number"
    else
        echo "It's not a double digit -> $number"
    fi
}

for ((counter=0; counter < $range; counter++))
do
    randomNumber=$(randomGen)
    ifDouble $randomNumber
done
