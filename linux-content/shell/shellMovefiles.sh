#! /bin/zsh -x

for file in `ls *.txt`
do
    filename=`echo $file | awk -F . '{print $1}'`
    if test -d "$filename"
    then
        # echo "True"
        rm -r $filename
    else
        # echo "False"
        mkdir $filename
    fi
    mv $file $filename
done
