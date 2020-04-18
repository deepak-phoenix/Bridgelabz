#!/bin/bash
# Gobal variables
randomDict=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0)
mainFlag=0
large=0
small=11

# portal varibales
portalRandom=0
portalReadWrite=0
portalPosition=0
# functions
findPosition() {
    value=$1
    for pos in ${!randomDict[@]}
    do
        if [ ${randomDict[$pos]} == $value ]
        then
            portalPosition=$pos
        fi
    done
}

largest(){
    for largeEle in ${randomDict[@]}
    do
        if [ $largeEle -gt $large ]
        then
            large=$largeEle
        fi
    done

}

smallest(){
    for smallEle in ${randomDict[@]}
    do
        if [ $smallEle -lt $small ]
        then
            small=$smallEle
        fi
    done
}
randomGen(){
    portalRandom=$(($RANDOM % 6 + 1))
    dictWrite $portalRandom
}

dictRead(){
    key=$1
    portalReadWrite=${randomDict["$key"]}
}

dictWrite(){
    key=$1
    tmp=${randomDict["$key"]}
    tmp=$(($tmp + 1))
    randomDict["$key"]=$tmp
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
        if [ $exitEle -gt 9 ]
        then
            printDict
            smallest
            largest
            findPosition $large
            echo "Largest occurance is $portalPosition  $large times"
            findPosition $small
            echo "Samllest occurance is $portalPosition $small times"
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
