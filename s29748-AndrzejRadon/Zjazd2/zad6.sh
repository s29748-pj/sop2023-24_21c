#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Użycie: $0 <nazwa_pliku>"
    exit 1
fi

PLIK=$1

if [ ! -f "$PLIK" ]; then
    echo "Plik $PLIK nie istnieje."
    exit 1
fi

while IFS= read -r linia; do
    echo -e "${linia//Andrzej/$'\e[31m'Andrzej$'\e[0m'}"
done < "$PLIK"
