#!/bin/bash

# variabels
declare -a ranndomDates
year=0
month=0
Date=0
addedflag=0
declare -a numberOfBirtdays
# portals
portalRandom=0

# functions
randomGen(){
    range=$1
    portalRandom=$((($RANDOM % $range) + 1))
}


generateDate(){
    local year92=1
    local year93=2
    randomGen 2
    case $portalRandom in
        $year92)
            year="1992"
        ;;
        $year93)
            year="1993"
        ;;
    esac
    randomGen 12
    month=$portalRandom
    if [ $month == 2 ]
    then
        randomGen 28
        date=$portalRandom
    else
        check=$(($month % 2))
        case $check in
            "1")
                randomGen 31
                date=$portalRandom
            ;;
            "0")
                randomGen 30
                date=$portalRandom
            ;;
        esac
    fi
}

monthCount(){
    for dobEle in ${!ranndomDates[@]}
    do
        addedflag=0
        tmp=`echo ${ranndomDates[$dobEle]} | awk -F / '{print $2$3}'`
        for monthEle in ${!numberOfBirtdays[@]}
        do
            countTmp=$monthEle
            if [ $tmp == $countTmp ]
            then
                addedflag=1
                count=${numberOfBirtdays[$monthEle]}
                count=$(($count + 1))
                numberOfBirtdays[$monthEle]=$count
            fi
        done
        if [ $addedflag == 0 ]
        then
            numberOfBirtdays[$tmp]=1
        fi
    done
}

# brains
for ((counter=1; counter < 50; counter++))
do
    generateDate
     ranndomDates["$counter"]="$date/$month/$year"
done
# printing all the dates
for ranDates in ${ranndomDates[@]}
do
    echo $ranDates
done
monthCount
echo "printing number and number of birth months in format MMYYYY -> number of births"
for countDatesEle in ${!numberOfBirtdays[@]}
do
    echo " $countDatesEle -> ${numberOfBirtdays[$countDatesEle]} "
done
