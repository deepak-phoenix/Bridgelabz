#!/bin/bash 
range=4

isPrime () {
    flag=0
    number=$1
    for ((counter=2; counter <= $number; counter++))
    do
        if [ $(($number % $counter)) == 0 ]
        then
            flag=$(($flag + 1))
        fi
    done
    # echo $flag

    if [ $number == 1 ]
    then
        echo "1 is not prime"
    elif [ $flag -lt 2 ]
    then
        echo "$number is prime"
    else
        echo "$number is not prime"
    fi
}

areFactorsPrime() {
    temp=$1
    for ((counter=1; counter <= $range; counter++))
    do
        iteam=`echo $temp | awk -F , -v val="$counter" '{print $val}'`
        # isPrime $iteam
        echo $iteam
        isPrime $iteam
    done
}

areFactorsPrime "1,2,3,4"
# read -p "Enter a number to be factorzied: " mainNumber
