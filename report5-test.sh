#!/bin/bash

readonly ERROR_MSG="引数には正の整数値を入力してください"

echo "テストケース1　2と4を入力"
value=$(./report5.sh 2 4)
if [ $value -eq 2 ];
then
	echo "成功"
else
	echo "エラー"
fi

echo "テストケース2　引数が１つしかない"
value=$(./report5.sh 3)
if [ $value == $ERROR_MSG ];
then
	echo "成功"
else
	echo "エラー"
fi

echo "テストケース3　自然数以外の文字を入力"
value=$(./report5.sh a b)
if [ $value == $ERROR_MSG ];
then
	echo "成功"
else
	echo "エラー"
fi
