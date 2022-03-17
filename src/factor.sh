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

n=$(($n + 0));
if [ $n -le 2 ]; then
	echo "2より大きい数字を第一パラメーターに入力してください";
	exit;
fi

prime=`factor $n`;
for i in $prime
do	
	echo $i;
done;


