#! /bin/zsh -x

for file in `ls *.log.1`
do
    name=`echo $file | awk -F . '{print $1}'`
    ext=`echo $file | awk -F . '{print $2 "." $3}'`
    newname=`date "+%d%m%Y"`
    echo "$name$newname$ext"
    mv $file "$name$newname$ext"
done
