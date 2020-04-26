#!/bin/bash
declare -a arrayName
flag=0
range=10
i=0

largest(){
    large=0
    for elel in ${arrayName[@]}
    do
        if [ $large -lt $elel ]
        then
            large=$elel
        fi
    done
    echo "largest:$large"
    tempL=$large
    flag=0
    while [ $flag == 0 ]
    do
        tempL=$(($tempL - 1))
        for secondL in ${arrayName[@]}
        do
            if [ $secondL == $tempL ]
            then
                flag=1
            fi
        done
    done
    echo " 2nd largest:$tempL"
}
smallest(){
    echo "funS"
    small=1000
    for eles in ${arrayName[@]}
    do
        if [ $eles -lt $small ]
        then
            small=$eles
        fi
    done
    flag=0
    echo "Smallest:$small"
    tempS=$small
    while [ $flag == 0 ]
    do
        tempS=$(($tempS + 1))
        for secondS in ${arrayName[@]}
        do
            if [ $secondS == $tempS ]
            then
                flag=1
            fi
        done
    done
    echo "2nd smallest:$tempS"
}


while [ $i -lt $range ]
do
    num=$RANDOM
    arrayName[$i]=$(($num%1000))
    i=`expr $i + 1`
done
for ele in ${arrayName[@]}
do
    echo $ele
done
largest
smallest
