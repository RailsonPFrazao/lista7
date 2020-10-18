#!/bin/bash
arq1=$(wc -l $1 | cut -f1 -d ' ')
arq2=$(wc -l $2 | cut -f1 -d ' ')
arq3=$(wc -l $3 | cut -f1 -d ' ')

if (( $arq1 >= 5 )); then
	echo " é maior que 5 linhas:" $1
fi

if (( $arq2 >= 5 )); then
	echo " é maior que 5 linhas:" $2
fi

if (( $arq3 >= 5 )); then
	echo " é maior que 5 linhas:" $3
fi
