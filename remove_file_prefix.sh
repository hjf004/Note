#!/bin/bash

if [ "$#" -ne "1" ];then
	echo -e "Wrong argument number!"
	echo "Usage:$0 <prefix string>"
	exit 1
fi

prefix=$1

files=`find . -name "${prefix}*"`

for f in ${files} ;do
	echo -e "in list:$f"
	if [ -f $f ];then
		name=`basename ${f}`
		newName=${name#${prefix}}
		mv -v $f $newName
	fi
done

