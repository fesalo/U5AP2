#! /bin/bash
while read linea; do
    mkdir $linea 
    x=$1
    for (( i=1; i<=$x; ++i ))
    do
        mkdir "$linea/personal$i"
    done
done< ../ficheros_scripts/nombres.txt