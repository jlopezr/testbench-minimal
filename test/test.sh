#!/bin/bash

# Verificar que se pasaron los tres parámetros
if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <nombre_binario> <archivo_entrada> <archivo_salida_esperada>"
    exit 1
fi

# Asignar los parámetros a variables
BINARIO=$1
ENTRADA=$2
SALIDA_ESPERADA=$3
SALIDA_OBTENIDA="salida_obtenida.txt"

# Ejecutar el binario con la entrada proporcionada y redirigir la salida a un archivo temporal
./$BINARIO < $ENTRADA > $SALIDA_OBTENIDA

# Verificar si colordiff está instalado
if command -v colordiff &> /dev/null; then
    DIFF_CMD="colordiff"
else
    DIFF_CMD="diff"
fi

# Comparar la salida obtenida con la salida esperada
if diff $SALIDA_OBTENIDA $SALIDA_ESPERADA > /dev/null; then
    echo "El resultado es igual al esperado."
else
    echo "El resultado es diferente al esperado."
    echo "Diferencias:"
    $DIFF_CMD $SALIDA_OBTENIDA $SALIDA_ESPERADA
fi

# Eliminar el archivo temporal
rm $SALIDA_OBTENIDA