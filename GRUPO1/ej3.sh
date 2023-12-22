#! /bin/bash
linux=0
windows=0
totli=0
totwi=0
while read linea; do
    sop=$(echo $linea | awk '{print $2}')
    procesos=$( echo $linea | awk '{print $3}')
    if [ $sop = "Linux" ];then
        linux=$(($linux+1))
        totli=$(($totli + $procesos))
    else
        windows=$(($windows+1))
        totwi=$(($totwi + $procesos))
    fi
done< ../ficheros_scripts/listado.txt

echo "Usuarios Linux->  $linux"
echo "Usuarios Windows->  $windows"
echo "Total procesos Linux-> $totli"
echo "Total procesos Windows->  $totwi"
