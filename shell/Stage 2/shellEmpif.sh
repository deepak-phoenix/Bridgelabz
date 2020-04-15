#! /bin/bash -x
# variables
isPresent=0
fullTime=0
partTime=1
wage=0
ran=0
hours=0
wagePerHour=20

# brains
ran=$(($RANDOM % 3))
if [ $ran == $fullTime ]
then
    hours=8
elif [ $ran == $partTime ]
then
    hours=4
else
    # absent
    hours=0
fi
wage=$(($hours * $wagePerHour))
