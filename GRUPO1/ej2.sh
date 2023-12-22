#! /bin/bash
pares=0
impares=0
while read linea; do
    resto=$(($linea%2))
    if [ $resto -eq 0 ];then
        pares=$(($pares+1))
        echo $linea >> pares.txt
    else
        impares=$(($impares+1))
        echo $linea >> impares.txt
    fi
done< ../ficheros_scripts/numeros.txt
echo "Pares: $pares. Impares: $impares"