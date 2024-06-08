#!/bin/bash

 imie=$1

 if [[ $imie == *[aA] ]]; then
    echo "$imie ma kota, a kot ma "$(echo "$imie" | sed 's/.$//')"ę"
 else
    echo "$imie ma kota, a kot ma ${imie}a"
 fi
