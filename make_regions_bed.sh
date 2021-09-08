#!/bin/bash

awk 'BEGIN {FS=","; OFS="\t"}; {print "Chr3\t" $1-10001, $1+10000}' Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821.csv | tail -n +2 > Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821_10kb_flanks.bed
awk 'BEGIN {FS=","; OFS="\t"}; {print "Chr3\t" $1-50001, $1+50000}' Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821.csv | tail -n +2 > Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821_50kb_flanks.bed
awk 'BEGIN {FS=","; OFS="\t"}; {print "Chr3\t" $1-100001, $1+100000}' Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821.csv | tail -n +2 > Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821_100kb_flanks.bed


