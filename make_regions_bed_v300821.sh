#!/bin/bash

awk 'BEGIN {FS=","; OFS="\t"}; {print "Chr3\t" $2-1, ($2)+($3*1000000)}' Fernandes_TableS_CO_HS_CS_CTL3.9_v300821.csv | tail -n +2 > Fernandes_TableS_CO_HS_CS_CTL3.9_v300821.bed


