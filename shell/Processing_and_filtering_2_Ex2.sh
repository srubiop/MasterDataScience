#!/usr/bin/bash

cat ~/Data/opentraveldata/optd_airlines.csv | cut -d'^' -f 8 | tail -n+2 | grep -i "^aero" | sort | uniq | wc -l
