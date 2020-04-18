#!/bin/bash
# Gobal variables
randomDict=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0)
mainFlag=0


# portal varibales
portalRandom=0
portalReadWrite=0

# functions

randomGen(){
    portalRandom=$(($RANDOM % 5 + 1))
    dictWrite $portalRandom
}

dictRead(){
    key=$1
    portalReadWrite=${randomDict["$key"]}
}

dictWrite(){
    key=$1
    randomDict["$key"]=$portalReadWrite
}

printDict(){
    key=1
    for keyEle in ${randomDict[@]}
    do
        echo "$key -> $keyEle"
        key=$(($key + 1))
    done
}

exitCondition(){
    exitFlag=0
    for exitEle in ${randomDict[@]}
    do
        if [ $exitEle >= 10 ]
        then
            exit
        fi
    done
}

# Brians
while [ $mainFlag == 0 ]
do
    randomGen
    exitCondition
done
