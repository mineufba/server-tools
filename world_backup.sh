#! /bin/bash

DATE=`date +%Y-%m-%d`

fileName="$1$DATE"".zip"

lastBackup=`ls $1 -t | head -n1`

cd $2

zip -r $fileName ./*

if [ ! -z "${lastBackup// }" ]; then

	lastBackup="$1""$lastBackup"
			
#	echo $fileName
#	echo $lastBackup

	diffOutput=`diff -q "$fileName" "$lastBackup"`

#	echo "$diffOutput"

	if [ -z "$diffOutput" ]; then

	        rm -f $fileName
	fi

fi 
