#!/bin/bash

readonly ERROR_MSG="引数には正の整数値を入力してください"

function calc_GDC() {
	if [ $2 == 0 ] 
	then
		echo $1
	else
		calc_GDC $2 $(($1%$2))
	fi
}

if test -z $1 || test -z $2
then
	echo $ERROR_MSG
	exit 1
fi

if expr $1 : "[0-9]*$" >&/dev/null && expr $2 : "[0-9]*$" >&/dev/null;
then
	value=`calc_GDC $1 $2`
	echo ${value}
else
	echo $ERROR_MSG
	exit 1
fi
