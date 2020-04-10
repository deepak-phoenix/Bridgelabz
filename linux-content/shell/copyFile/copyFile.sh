#! /bin/zsh 

read fileName
if test -e "$fileName"
then
    echo "$fileName: File is present"
else
    touch "$fileName"
