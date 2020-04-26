#! /bin/zsh -x

homeawk=`awk -F : '{if($1 == "deepakpatel") print $6}' passwd`
homed=`grep -i deepakpatel passwd | awk -F : '{print $6}'`
mkdir "$homed/newFile"
touch "$homed/newFile/name.txt"
