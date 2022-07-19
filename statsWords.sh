#!/bin/bash
echo "Usted a ingresado a statsWords"
sleep 1
echo "statsWords es un indicador estadístico de longitud de palabras"
sleep 1
echo "Debe ingresar el nombre del archivo de texto que quiere analizar o (Q / q) para volver al menu"
read ARCHI
if [ -e $ARCHI.txt ]
then

largo=0
for palabra in $(<$ARCHI.txt)
do
    caracteres=${#palabra}
    if (( caracteres > largo ))
    then
        largo=$caracteres
        palabra_mas_larga=$palabra
    fi
done
echo "La palabra mas larga del texto es $palabra_mas_larga y contiene $largo caracteres"
set `cat $ARCHI.txt`
palabra_mas_corta=$1
Caracteres=${#palabra_mas_corta}
for palabra2 in $(<$ARCHI.txt)
do
    siguiente_palabra=${#palabra2}
    if (( Caracteres >= siguiente_palabra ))
    then
        Caracteres=$siguiente_palabra
        palabra_mas_corta=$palabra2
    else
        Caracteres=${#palabra_mas_corta}
        palabra_mas_corta=$palabra_mas_corta
    fi
done
echo "La palabra mas corta del texto es $palabra_mas_corta y contiene $Caracteres caracteres"
cantC=$(wc -m < $ARCHI.txt)
cantP=$(wc -w < $ARCHI.txt)
echo "caracteres" $cantC && echo "palabras" $cantP
echo "El promedio de longitud de palabras es $(( $cantC / $cantP ))"
else
echo "noexist"
fi

