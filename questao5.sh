#!/bin/bash

ls > t.txt
cont=$(wc -l t.txt | cut -f1 -d ' ' )
for i in $(seq 1 $cont); do
	teste=$(sed -n "$i"p t.txt)
	if [ -d $teste ]; then
		echo $teste >> diretorios.txt
	fi
	
	if [ -f $teste ] ; then
		echo $teste >> arquivos.txt
	fi

	if [ -h $teste ] ; then
		echo $teste >> links.txt
	fi

done

if [ -e arquivos.txt ]; then
	echo "São arquivos:" $(cat arquivos.txt)
	rm arquivos.txt
fi

if [ -e diretorios.txt ]; then
	echo "São diretorios:" $(cat diretorios.txt)
	rm diretorios.txt
fi

if [ -e links.txt ]; then
	echo "Possui link simbólico:" $(cat links.rxt)
	rm links.txt
fi
rm t.txt
