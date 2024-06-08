#!/bin/bash

# Pobierz tekst z argumentu
TEKST=$1

# Pobierz pierwszy znak
PIERWSZY_ZNAK=${TEKST:0:1}

# Pobierz ostatni znak
OSTATNI_ZNAK=${TEKST: -1}

# Zamień SOP na \e[32mSOP\e[0m
ZAMIENIONY_TEKST="${TEKST//SOP/$'\e[32m'SOP$'\e[0m'}"


# Wyświetl wyniki
echo "Pierwszy znak: $PIERWSZY_ZNAK"
echo "Ostatni znak: $OSTATNI_ZNAK"
echo -e "Zmieniony tekst: $ZAMIENIONY_TEKST"

