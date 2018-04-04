#!/usr/bin/bash

filename="$1"

cat $filename | csvcut -d '^' -c 'model','nb_engines'| csvgrep -c 'nb_engines' -r '[1-9]' | csvsort -c 'nb_engines' -r | head -2
