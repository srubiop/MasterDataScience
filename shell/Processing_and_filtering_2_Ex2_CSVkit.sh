#!/usr/bin/bash

cat ~/Data/opentraveldata/optd_airlines.csv | csvcut -d '^' -c "name" | csvgrep -c "name" -r "^[A|a]ero" | csvsort -c "name" | uniq | csvstat --count
