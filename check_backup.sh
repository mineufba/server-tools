#!/bin/bash

path=$1

numOfFiles=$((`ls -f $path| wc -l`-2))

if [ $numOfFiles -ge $((10)) ]; then

	fileName=`find $path -type f -printf '%T+ %p\n' | grep -E ".*\.zip" |  sort | head -n 1 | grep -E "[0-9]{4}-[0-9]{2}-[0-9]{2}\.zip" -o`

	rm $path$fileName

fi
