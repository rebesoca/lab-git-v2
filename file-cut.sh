#!/bin/bash

fichero=$1

#Como soy alumno 26, debemos guardar 1/26 de las líneas
num=26
#Miro el número total de líneas del fichero
lineas_fichero=$(wc -l < "$fichero")

#Calculo las líneas a mantener
lineas_guardar=$(( $lineas_fichero/$num ))


#Creamos un nombre temporal
tmp="${fichero}.tmp.${SLURM_PROCID}"

#cortamos y guardamos en el temporal
head -n "$lineas_guardar" "$fichero">"$tmp"

#sustituimos por el original
mv "$tmp" "$fichero"

echo "Procesado $fichero donde se han guardado $lineas_guardar líneas"
