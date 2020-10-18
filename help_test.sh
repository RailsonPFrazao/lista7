#!/bin/bash
echo $* > t.txt
for i in $(seq 1 $#); do
	a=$(cut -f$i -d ' ' t.txt)
	
	if [ $a == "logica" ]; then
		echo 'Opções para logica:
		! not
		-a and
		-o or'
	
	elif [ $a == "aritmetica" ]; then
		echo 'aritmetica'

	elif [ $a == "string" ]; then
		echo 'Opções para string:
		= string é igual
		!= string é diferente
		-n string não é nula
		-z string nula'

	elif [ $a == "variaveis" ]; then
		echo 'Opções para variaveis:
		-lt número menor que
		-gt número maior que
		-le número menor igual
		-ge número maior igual
		-eq número igual
		-ne número diferente
		= string igual'

	elif [ $a == "arquivos" ]; then
		echo 'Opções para arquivos:
		-d é um diretorio
		-f arquivo normal
		-s tamanho maior que 0
		-r tem permissão de leitura
		-w tem permissão de escrita
		-nt arquivo mais recente
		-ot arquivo mais antigo
		-ef arquivo é o mesmo' 
	fi
	
done	
rm t.txt
