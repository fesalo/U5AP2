#! /bin/bash
contador=0
suma=0
while read linea; do
    rain=$(echo $linea | awk '{print $2}')
    suma=$(($suma+$rain))
    contador=$(($contador+1))
done< ../ficheros_scripts/precipitaciones.txt
media=$(($suma/$contador))
echo La media de precipitaciones es $media
