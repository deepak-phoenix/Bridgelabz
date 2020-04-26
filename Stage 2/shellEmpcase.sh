#! /bin/bash -x

# variables
isPresent=0
fullTime=0
partTime=1
ratePerHour=20
wage=0
hour=0

# brains
empCheck=$(($RANDOM % 3))

case $empCheck in
    $fulltime)
        hour=8;;
    $partTime)
        hour=4;;
    *)
        hour=0;;
esac
wage=$(($hour * $ratePerHour))
