#!/usr/bin/bash

cat ~/Data/opentraveldata/optd_aircraft.csv | cut -d '^' -f 3 | tail -n +2 | sort | uniq | grep -E "7[0-9]7|3[0-9][0-9]"
