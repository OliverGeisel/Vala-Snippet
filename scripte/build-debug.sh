#!/bin/bash

FILEENDING="vala"

echo "Compiliere mit debug!"
NAMEARRAY=(${1//./ })
NAME=${NAMEARRAY[0]}
ENDING=${NAMEARRAY[1]}

if [ $ENDING != $FILEENDING ]
then
echo "Abbruch! Datei endet nicht auf .vala!"
return
fi
valac -o outputs/$NAME-debug -g --save-temps $1