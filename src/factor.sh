#!/bin/sh

n=${1};
if [ -z $n ]; then
	echo "自然数を入力してください。";
	while read line;
	do
		n=$line;
		break;
	done;
	reset;
fi

prime=`factor $n`;
for i in $prime
do	
	echo $i;
done;


