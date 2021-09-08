#!/bin/bash

# pyGenomeTracks version 3.6

# From https://pygenometracks.readthedocs.io/en/latest/content/usage.html#pygenometracks

# Usage:
# ./pyGenomeTracks_WT_CTL3.9_flanks.sh 10kb

FLANKSIZE=$1
SAMPLE1=$1
SAMPLE2=$2
GENOME=$3
RESOLUTION=$4
NORM=$5
CORRECTION=$6
OPERATION=$7

[ -d plots/ ] || mkdir -p  plots/

source activate HiCExplorer

pyGenomeTracks --tracks WT_CTL3.9_tracks.ini \
               --outFileName plots/pyGenomeTracks_WT_CTL3.9_${FLANKSIZE}_flanks.pdf \
               --BED Fernandes_TableS2_CO_HS_CS_CTL3.9_v160821_${FLANKSIZE}_flanks.bed \
               --width 40 \
               --dpi 300 \
               --title "CTL3.9 hotspot/coldspot ("${FLANKSIZE}" flanks)"

source deactivate
