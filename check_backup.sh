#!/bin/bash

path=$1

numOfFiles=$((`ls -f $path| wc -l`-2))

if [ $numOfFiles -ge $((10)) ]; then

	# echo $numOfFiles

	fileName=`find $path -type f -printf '%T+ %p\n' | sort | head -n 1 | grep -E "\./.*" -o`

	# echo $fileName

	rm $fileName

fi
