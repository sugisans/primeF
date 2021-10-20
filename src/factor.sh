#!/bin/sh

prime=`factor ${1}`
for i in $prime
do	
	echo $i;
done;


