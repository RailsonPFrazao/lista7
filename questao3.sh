#!/bin/bash
echo $* > t.txt
for i in $(seq 1 $#); do
	arq=$(cut -f$i -d ' ' t.txt)
	if [ -x $arq ] ; then
		echo $arq
	fi

done
rm t.txt
