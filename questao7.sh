#!/bin/bash

todos=$(ls)
echo $todos > arq.txt
veri=$(cut -f1 -d ' ' arq.txt)
p=$(ls | wc -l)
p=$(( $p - 1 ))
for i in $(seq 1 $p); do
	if [ $(cut -f"$i" -d ' ' arq.txt) -nt $veri ]; then
		veri=$(cut -f"$i" -d ' ' arq.txt)
fi
done
echo $veri
rm arq.txt
