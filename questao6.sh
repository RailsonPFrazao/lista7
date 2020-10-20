#!/bin/bash

ls > t.txt

for i in $(seq 1 $(wc -l t.txt | cut -f1 -d ' ')); do 
	teste=$(sed -n 1p t.txt)
	sed -i 1d t.txt
	if [ -d $teste ]; then
		echo "É um diretorio:" $teste
	else
		for j in $(seq 1 $(wc -l t.txt | cut -f1 -d ' '));do
			veri=$(sed -n "$j"p t.txt)
			if [ $(wc -l $teste | cut -f1 -d ' ') = $(wc -l $veri | cut -f1 -d ' ') ] ; then
			if [ -f $(sed -n "$j"p t.txt) ]; then
				echo "Arquivos com mesmo número de linhas:"
				echo "$(sed -n "$j"p t.txt) é um arquivo"
			fi
			if [ -f $(wc -l $teste | cut -f2 -d ' ') ]; then
				echo "$(wc -l $teste | cut -f2 -d ' ') é um arquivo"
			fi
		fi
	done
fi
done
rm t.txt 
