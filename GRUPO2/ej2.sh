#! /bin/bash
i=1
while read linea; do
    rain=$(echo $linea | awk '{print $2}')
    if [ $rain = 0 ];then
        d=$(($i%7))
        if [ $d -eq 0 ]; then
            echo "Domingo" >> lista.txt
        elif [ $d -eq 1 ]; then
            echo "Lunes"    >> lista.txt
        elif [ $d -eq 2 ]; then
            echo "Martes"   >> lista.txt
        elif [ $d -eq 3 ]; then
            echo "Miércoles" >> lista.txt
        elif [ $d -eq 4 ]; then
            echo "Jueves" >> lista.txt
        elif [ $d -eq 5 ]; then
            echo "Viernes" >> lista.txt
        elif [ $d -eq 6 ]; then
            echo "Sábado" >> lista.txt
        fi
    fi
    i=$(($i+1))
done< ../ficheros_scripts/precipitaciones.txt
cat lista.txt
rm lista.txt
