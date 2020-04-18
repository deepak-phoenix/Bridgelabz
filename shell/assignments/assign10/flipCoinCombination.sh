#!/bin/bash 

# variables
head=0
tail=1

headCounter=0
tailCounter=0
range=30
count=0
declare -a coinToss
declare -a coinTossDoubles
declare -a coinTossTriple

# portals
doublets=""
# triplets=""

# functions

flipCoin(){
    flip=$(($RANDOM % 2))
    if test $head -eq $flip
    then
        # echo "Head"
        coinToss[$count]="Head"
        headCounter=$(($headCounter + 1))
        doublets=$doublets"H"
    elif test $tail -eq $flip
    then
        # echo "tail"
        coinToss[$count]="Tail"
        tailCounter=$(($tailCounter + 1))
        doublets=$doublets"T"
    fi
    count=$(($count + 1))
}

calculate(){
    headPercentage=`echo "($headCounter / $count) * 100" | bc -l`
    tailPercentage=`echo "($tailCounter / $count) * 100" | bc -l`
    echo "Head occurance percentage is $headPercentage"
    echo "Tail occurance precentage is $tailPercentage"
}

# countDouble(){
#     case $doublets in
#         "HH")
#             coinTossDoubles["1"]=$((${coinTossDoubles["1"]} + 1))
#         ;;
#         "HT")
#             coinTossDoubles["2"]=$((${coinTossDoubles["2"]} + 1))
#         ;;
#         "TH")
#             coinTossDoubles["3"]=$((${coinTossDoubles["3"]} + 1))
#         ;;
#         "TT")
#             coinTossDoubles["4"]=$((${coinTossDoubles["4"]} + 1))
#         ;;
#     esac
# }
countTriplets(){
    case $doublets in
        "HHH")
            coinTossDoubles["1"]=$((${coinTossDoubles["1"]} + 1))
        ;;
        "HHT")
            coinTossDoubles["2"]=$((${coinTossDoubles["2"]} + 1))
        ;;
        "HTH")
            coinTossDoubles["3"]=$((${coinTossDoubles["3"]} + 1))
        ;;
        "HTT")
            coinTossDoubles["4"]=$((${coinTossDoubles["4"]} + 1))
        ;;
        "THH")
            coinTossDoubles["5"]=$((${coinTossDoubles["1"]} + 1))
        ;;
        "THT")
            coinTossDoubles["6"]=$((${coinTossDoubles["1"]} + 1))
        ;;
        "TTH")
            coinTossDoubles["7"]=$((${coinTossDoubles["1"]} + 1))
        ;;
        "TTT")
            coinTossDoubles["8"]=$((${coinTossDoubles["1"]} + 1))
        ;;
    esac
}
# calculateDouble(){
#     customRange=$(($range / 2))
#     HHpercentage=`echo "(${coinTossDoubles["1"]} / $customRange) * 100" | bc -l`
#     HTpercentage=`echo "(${coinTossDoubles["2"]} / $customRange) * 100" | bc -l`
#     THpercentage=`echo "(${coinTossDoubles["3"]} / $customRange) * 100" | bc -l`
#     TTpercentage=`echo "(${coinTossDoubles["4"]} / $customRange) * 100" | bc -l`
#     echo "HH occurance percentage is $HHpercentage"
#     echo "HT occurance percentage is $HTpercentage"
#     echo "TT occurance precentage is $TTpercentage"
#     echo "TH occurance precentage is $THpercentage"
# }

calculateTriplets(){
    customRange=$(($range / 3))
    HHHpercentage=`echo "(${coinTossDoubles["1"]} / $customRange) * 100" | bc -l`
    HHTpercentage=`echo "(${coinTossDoubles["2"]} / $customRange) * 100" | bc -l`
    HTHpercentage=`echo "(${coinTossDoubles["3"]} / $customRange) * 100" | bc -l`
    HTTpercentage=`echo "(${coinTossDoubles["4"]} / $customRange) * 100" | bc -l`
    THHpercentage=`echo "(${coinTossDoubles["5"]} / $customRange) * 100" | bc -l`
    THTpercentage=`echo "(${coinTossDoubles["6"]} / $customRange) * 100" | bc -l`
    TTHpercentage=`echo "(${coinTossDoubles["7"]} / $customRange) * 100" | bc -l`
    TTTpercentage=`echo "(${coinTossDoubles["8"]} / $customRange) * 100" | bc -l`
    echo "HHH occurance percentage is $HHHpercentage"
    echo "HHT occurance percentage is $HHTpercentage"
    echo "HTH occurance precentage is $HTHpercentage"
    echo "HTT occurance precentage is $HTTpercentage"
    echo "THH occurance precentage is $THHpercentage"
    echo "THT occurance precentage is $THTpercentage"
    echo "TTH occurance precentage is $TTHpercentage"
    echo "TTT occurance precentage is $TTTpercentage"
}


# brains
while test $count -lt $range
do
    doublets=""
    # triplets=""
    flipCoin
    flipCoin
    flipCoin
    # countDouble
    countTriplets
done
calculate
# calculateDouble
calculateTriplets
