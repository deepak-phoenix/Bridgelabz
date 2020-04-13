#!/bin/zsh -x

for file in `awk -F : '$4 > 210 {print $0}' ./passwd`
do
    echo $file | awk -F : '{print $4 "->" $6}'
done
