#!/usr/bin/bash

cat ~/Data/opentraveldata/optd_aircraft.csv | csvcut -d '^' -c "model" | csvgrep -c "model" -r "7[0-9]7|3[0-9][0-9]" | csvsort -c "model" | uniq
