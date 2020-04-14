#! /bin/bash -x
a=2
b=3
c=4
range=4
declare -a expValue
expression=`echo "$a + $b * $c" | bc`
expValue[0]=$expression
expression=`echo "$c + $a / $b" | bc`
expValue[1]=$expression
expression=`echo "$a % $b + $c" | bc`
expValue[2]=$expression
expression=`echo "$a * $b + $c" | bc`
expValue[3]=$expression

i=0
big=0
while [ $i -lt $range ]
do
    if [ ${expValue[$i]} -gt $big ]
    then
        big=${expValue[$i]}
    fi
    i=`expr $i + 1`
done

i=0
small=1000
while [ $i -lt $range ]
do
    if [ ${expValue[$i]} -lt $small ]
    then
        small=${expValue[$i]}
    fi
    i=`expr $i + 1`
done

echo "Small $small"
echo "big $big"
