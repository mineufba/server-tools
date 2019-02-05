#! /bin/bash

DATE=`date +%Y-%m-%d`

fileName="$1$DATE"".zip"

lastBackup=`ls $1 -t | head -n1`

zip -r $fileName $2

if [ ! -z "${lastBackup// }" ]; then

	lastBackup="$1""$lastBackup"
			
	if [ `diff -q $fileName $lastBackup`=="" ]; then

	        rm -f $fileName
	fi

fi 	
