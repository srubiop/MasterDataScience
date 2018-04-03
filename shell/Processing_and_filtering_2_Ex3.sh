#!/usr/bin/bash

head -1 ~/Data/opentraveldata/optd_por_public.csv | tr '^' '\n' > /tmp/cols.txt
seq 1 `head -1 ~/Data/opentraveldata/optd_por_public.csv | tr '^' '\n' | wc -l` > /tmp/num_cols.txt
paste /tmp/num_cols.txt /tmp/cols.txt | grep -i name
