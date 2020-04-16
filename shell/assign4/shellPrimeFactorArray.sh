#!/bin/bash -x

# variables

mainNumber=0
declare -a factors
factorCount=0
declare -a primeFactors
primeFactorCount=0
primeResult="N"

display() {
    arrayName=$1
    if [ $arrayName == "factors" ]
    then
        for Fele in ${factors[@]}
        do
            echo $Fele
        done
    elif [ $arrayName == "primeFactors" ]
    then
        for Fele in ${primeFactors[@]}
        do
            echo $Fele
        done
    fi
}

addTo() {
    arrayName=$1
    value=$2
    if [ $arrayName == "factors" ]
    then
        # echo $factorCount
        factors[$factorCount]=$value
        factorCount=$(($factorCount + 1))
    elif [ $arrayName == "primeFactors" ]
    then
        primeFactors[$primeFactorCount]=$value
        primeFactorCount=$(($primeFactorCount + 1))
        # echo $primeFactorCount
    fi
}


findFactors() {
    factorNumber=$1
    for (( factorCounter=2; ($factorCounter*$factorCounter) < $factorNumber; factorCounter++))
    do
        remiender=`echo "$factorNumber % $factorCounter" | bc`
        if (($remiender == 0))
        then
            addTo factors $factorCounter
            divisior=`echo "$factorNumber / $factorCounter" | bc`
            addTo factors $divisior
        fi
    done
}

prime(){
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
        # echo "N"
        primeResult="N"
    elif [ $flag -lt 2 ]
    then
        primeResult="Y"
    else
        primeResult="N"
    fi
}

loopThrough(){
    # echo $factors
    for Fele in ${factors[@]}
    do
        prime $Fele
        if [ $primeResult == 'Y' ]
        then
            # echo "Prime"
            addTo primeFactors $Fele
            isEnough
        else
            findFactors $Fele
        fi
    done
    loopThrough
}

isEnough(){
    multiply=1
    for PFele in ${primeFactors[@]}
    do
        multiply=$(($PFele * $multiply))
    done
    if [ $multiply == $mainNumber ]
    then
        echo "Prime factors found"
        display primeFactors
        exit
    elif [ $multiply -gt $mainNumber ]
    then
        primeFactors=("${primeFactors[@]/$del}")
        primeFactorCount=$(($primeFactorCount - 1))
    fi
}


read -p "Enter a number: " mainNumber
findFactors $mainNumber
loopThrough
