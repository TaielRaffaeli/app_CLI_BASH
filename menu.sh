#!/bin/bash

echo "Bienvenido el menu"
echo "Por favor, elija una de las siguientes opciones para analizar su texto"
echo "OPCIONES: 1)statsWords.sh - 2)statsUsageWords.sh - 3)findNames.sh - 4)statsSentences.sh - 5)blankLinesCounter.sh"

read VAR1
case $VAR1 in
1) ./statsWords.sh ;;
2) ./statsUsageWords.sh ;;
3) ./findNames.sh ;;
4) ./statsSentences.sh ;;
5) ./blankLinesCounter.sh ;;
[qQ]) echo "saliste" ;;
esac

