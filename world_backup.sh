#! /bin/bash

DATE=`date +%Y-%m-%d`

zip -r "$1$DATE"".zip" $2
