#!/bin/bash

if [ -z $a ] ; then
	read -p 'Digiti o novo valor para "$a":' a
	echo $a

else
	echo 'Já existi valor:' $a
fi

if [ -z $b ] ; then
	read -p 'Digiti o novo valor "$b":' b
	echo $b

else
	echo 'Já existi valor:' $b

fi

if [ -z $c ] ; then
	read -p 'Digite o novo valor "$c":' c
	echo $c

else
	echo 'Já existe valor:' $c

fi
