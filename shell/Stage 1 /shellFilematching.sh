#! /bin/bash -x

cmp originalFile/originalFile.sh copyFile/copyFile.sh
mkdir originalBackup
cp originalFile/originalFile.sh originalBackup
mv originalBackup/originalFile.sh originalBackup/originalBackup.sh
cmp originalFile/originalFile.sh originalBackup/originalBackup.sh
