#!/bin/bash -x

dictValues=("firstName:Deepak" "lastName:Patel" "country:India")


extracKey(){
    value=$1
    echo "${value%%:*}"
}

extracValue(){
    value=$1
    echo "${value##*:}"
}


for ele in ${dictValues[@]}
do
    extracKey $ele
    extracValue $ele
done
