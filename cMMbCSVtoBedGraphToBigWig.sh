#!/bin/bash

# Convert TSV file containing deepsignal-calculated
# context-specific DNA methylation frequencies into bigWig format
# suitable for use with deepTools computeMatrix for fine-scale profiling

# Usage:
# ./cMMbCSVtoBedGraphToBigWig.sh Fernandes_TableS_cMMb_CO_HS_CS_CTL3.9_v300821

i=$1

source activate BSseq_mapping

[ -d ./bg ] || mkdir ./bg
[ -d ./bw ] || mkdir ./bw

# USAGE: bedGraphToBigWig in.bedGraph chrom.sizes out.bw                                                  
# where in.bedGraph is a four-column file in the format:                                                  
#       <chrom> <start> <end> <value>
# and chrom.sizes is a two-column file/URL: <chromosome name> <size in bases>                             
# and out.bw is the output indexed big wig file.
# The input bedGraph file must be sorted, use the unix sort command:                                      
# WT
(tail -n +2 ${i}.csv | LC_COLLATE=C sort -t ',' -k3,3n \
| awk 'BEGIN{FS=",";OFS="\t"} {print "Chr3\t" $3-1, $4, $7}' - \
> bg/${i}_WT_cMMb.bedgraph;
sed -i '1i track type=bedGraph' bg/${i}_WT_cMMb.bedgraph;
bedGraphToBigWig bg/${i}_WT_cMMb.bedgraph /home/ajt200/analysis/nanopore/t2t-col.20210610/t2t-col.20210610_Chr3.fa.sizes bw/${i}_WT_cMMb.bw ) \
&> ${i}_cMMbCSVtoBedGraphToBigWig_WT_cMMb.log

# cmt3
(tail -n +2 ${i}.csv | LC_COLLATE=C sort -t ',' -k3,3n \
| awk 'BEGIN{FS=",";OFS="\t"} {print "Chr3\t" $3-1, $4, $9}' - \
> bg/${i}_cmt3_cMMb.bedgraph;
sed -i '1i track type=bedGraph' bg/${i}_cmt3_cMMb.bedgraph;
bedGraphToBigWig bg/${i}_cmt3_cMMb.bedgraph /home/ajt200/analysis/nanopore/t2t-col.20210610/t2t-col.20210610_Chr3.fa.sizes bw/${i}_cmt3_cMMb.bw ) \
&> ${i}_cMMbCSVtoBedGraphToBigWig_cmt3_cMMb.log

# met1
(tail -n +2 ${i}.csv | LC_COLLATE=C sort -t ',' -k3,3n \
| awk 'BEGIN{FS=",";OFS="\t"} {print "Chr3\t" $3-1, $4, $11}' - \
> bg/${i}_met1_cMMb.bedgraph;
sed -i '1i track type=bedGraph' bg/${i}_met1_cMMb.bedgraph;
bedGraphToBigWig bg/${i}_met1_cMMb.bedgraph /home/ajt200/analysis/nanopore/t2t-col.20210610/t2t-col.20210610_Chr3.fa.sizes bw/${i}_met1_cMMb.bw ) \
&> ${i}_cMMbCSVtoBedGraphToBigWig_met1_cMMb.log

source deactivate
