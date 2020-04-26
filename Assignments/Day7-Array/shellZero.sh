#!/bin/bash

declare -a randomArray
taskRange=3
buildflag=0
mainflag=0
arrageRange=10
numbers=(1 3 1 4 -1 -5 1 -2 1 4)
portalRandom=0


printArray(){
    for elep in ${numbers[@]}
    do
        echo $elep
    done
}
randomGen(){
    portalRandom=$(($RANDOM % 10))
}


buildTask(){
    for ((genCounter=0; genCounter < $taskRange; genCounter++))
    do
        randomGen
        randomArray[$genCounter]=$portalRandom
    done
}

printArray
mainflag=0
while [ $mainflag == 0 ]
do
    buildTask
    sum=0
    for pos in ${randomArray[@]}
    do
        sum=$(($sum + ${numbers[$pos]}))
    done
    if [ $sum == 0 ]
    then
        mainflag=1
        echo "Triplets"
        for elep in ${randomArray[@]}
        do
            echo ${numbers[$elep]}
        done
    fi
done
