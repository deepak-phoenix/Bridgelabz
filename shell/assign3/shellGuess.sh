#!/bin/bash -x
equal=1
lesser=0
greater=2
start=1
end=100
number=50

echo "Pick a number between 1 and 100"
flag=1
while [ $flag == 1 ]
do
    number=$((($start + $end) /2))
    echo $number
    echo "If this is the number enter 1. If your number is lesser than this number enter 0. If your number is greater than your number enter 2"
    read userAns
    case $userAns in
        $equal )
            echo "Awesome!"
            flag=0
            # exit
        ;;
        $lesser )
            echo "okay"
            end=$number
        ;;
        $greater )
            echo "okay"
            start=$number
        ;;
        * )
            echo "Wrong input"
        ;;
    esac
    if(($number == 1))
    then
        flag=0
        echo "cheater"
    fi
    if(($number == 99))
    then
        flag=0
        echo "cheater"
    fi
done
