#!/bin/bash 
declare -a arrayName
nonRange=10
range=10
i=0
portalLargePos=0
tmp=0


printArray(){
    for elep in ${arrayName[@]}
    do
        echo $elep
    done
}
largest(){
    counterRanger=$1
    large=0
    for ((largeCounter=0; largeCounter < $counterRanger; largeCounter++))
    do
        if [ $large -lt ${arrayName[$largeCounter]} ]
        then
            large=${arrayName[$largeCounter]}
        fi
    done
    for ((count=0; count < $nonRange; count++))
    do
        if [ ${arrayName[$count]} -eq $large ]
        then
            portalLargePos=$count
        fi
    done
}


sort(){
    for ((counter=0; counter < $nonRange; counter++))
    do
        largest $range
        range=$(($range - 1))

        tmp=${arrayName[$portalLargePos]}
        arrayName[$portalLargePos]=${arrayName[$range]}
        arrayName[$range]=$tmp
    done
}


createArray(){
    while [ $i -lt $range ]
    do
        num=$RANDOM
        arrayName[$i]=$(($num%100))
        i=`expr $i + 1`
    done
    printArray
}

createArray
sort
echo "Sorted ?"
printArray
