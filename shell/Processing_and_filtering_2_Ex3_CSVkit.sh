#!/usr/bin/bash

cat ~/Data/opentraveldata/optd_por_public.csv | csvcut -d '^' -n | csvgrep -H -c 1 -m "name"
