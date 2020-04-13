#! /bin/zsh -x

read fileName
if test -e "$fileName"
then
    echo "$fileName: File is present"
else
    touch "$fileName"
    echo "$fileName: File is created"
fi
