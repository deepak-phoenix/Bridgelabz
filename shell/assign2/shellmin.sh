#! /bin/bash 

range=5
i=0
sum=0
# declaring a array
declare -a arrayName

# generating random numbers
while [ $i -lt $range ]
do
    num=$RANDOM
    arrayName[$i]=$(($num%999))
    echo "${arrayName[$i]}"
    i=`expr $i + 1`
done

# finding largest of random numbers
i=0
big=0
while [ $i -lt $range ]
do
    if [ ${arrayName[$i]} -gt $big ]
    then
        big=${arrayName[$i]}
    fi
    i=`expr $i + 1`
done

# finding smallest of numbers
i=0
small=1000
while [ $i -lt $range ]
do
    if [ ${arrayName[$i]} -lt $small ]
    then
        small=${arrayName[$i]}
    fi
    i=`expr $i + 1`
done

# displaying smallest and largest numebrs
echo "Lagrest: $big"
echo "Smallest: $small"
