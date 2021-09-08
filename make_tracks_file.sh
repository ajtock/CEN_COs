#!/bin/bash

# Usage:
# ./make_tracks_file.sh 1bp

binName=$1

source activate HiCExplorer

make_tracks_file --trackFiles \
  /data/public_data/arabidopsis/t2t-col.20210610/t2t-col.20210610.genes.gtf \
  /home/ajt200/analysis/nanopore/t2t-col.20210610/annotation/TEs_EDTA/t2t-col.20210610_TEs_All_Chr3_colofamily.bed \
  /home/ajt200/analysis/nanopore/t2t-col.20210610/deepsignal_DNAmeth/bw/Col_0_deepsignalDNAmeth_30kb_90pc_MappedOn_t2t-col.20210610_CpG.bw \
  /home/ajt200/analysis/nanopore/t2t-col.20210610/deepsignal_DNAmeth/bw/Col_0_deepsignalDNAmeth_30kb_90pc_MappedOn_t2t-col.20210610_CHG.bw \
  /home/ajt200/analysis/nanopore/t2t-col.20210610/deepsignal_DNAmeth/bw/Col_0_deepsignalDNAmeth_30kb_90pc_MappedOn_t2t-col.20210610_CHH.bw \
  /home/ajt200/analysis/BSseq_leaf_Rigal_Mathieu_2016_PNAS/snakemake_BSseq_t2t-col.20210610/coverage/bw/Col_0_BSseq_Rep1_ERR965674_MappedOn_t2t-col.20210610_dedup_CpG.bw \
  /home/ajt200/analysis/BSseq_leaf_Rigal_Mathieu_2016_PNAS/snakemake_BSseq_t2t-col.20210610/coverage/bw/Col_0_BSseq_Rep1_ERR965674_MappedOn_t2t-col.20210610_dedup_CHG.bw \
  /home/ajt200/analysis/BSseq_leaf_Rigal_Mathieu_2016_PNAS/snakemake_BSseq_t2t-col.20210610/coverage/bw/Col_0_BSseq_Rep1_ERR965674_MappedOn_t2t-col.20210610_dedup_CHH.bw \
  /home/ajt200/analysis/160518_Kyuha_SPO11oligos/WT/snakemake_SPO11oligos_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_SPO11oligos_Rep1_WT_gDNA_Rep1_R1_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/20190917_dh580_Athaliana_ChIPseq_DMC1/fastq_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_DMC1_V5_Rep1_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/20190917_dh580_Athaliana_ChIPseq_DMC1/fastq_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_DMC1_V5_Rep2_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/20190819_dh580_Athaliana_ChIPseq_MTOPVIB/fastq_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_MTOPVIB_HA_Rep1_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/20190819_dh580_Athaliana_ChIPseq_MTOPVIB/fastq_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_MTOPVIB_HA_Rep2_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/20190722_cal66_Athaliana_ChIPseq_ASY1/fastq_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_ASY1_Rep1_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/REC8_pooled/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_REC8_HA_Rep2_ChIP_WT_REC8_Myc_Rep1_input_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/RNAseq_tissues_Klepikova_Penin_2016_PlantJ/snakemake_RNAseq_STAR_t2t-col.20210610/mapped/both/bw/Col_0_anthers_young_flower_RNAseq_Rep1_SRR3581691_MappedOn_t2t-col.20210610_both_sort_norm.bw \
  /home/ajt200/analysis/RNAseq_tissues_Klepikova_Penin_2016_PlantJ/snakemake_RNAseq_STAR_t2t-col.20210610/mapped/both/bw/Col_0_anthers_opened_RNAseq_Rep1_SRR3581684_MappedOn_t2t-col.20210610_both_sort_norm.bw \
  /home/ajt200/analysis/RNAseq_tissues_Klepikova_Penin_2016_PlantJ/snakemake_RNAseq_STAR_t2t-col.20210610/mapped/both/bw/Col_0_leaf_RNAseq_Rep1_SRR3581681_MappedOn_t2t-col.20210610_both_sort_norm.bw \
  /home/ajt200/analysis/CENH3_seedlings_Maheshwari_Comai_2017_GenomeRes/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_WT_CENH3_Rep1_ChIP_SRR4430537_WT_CENH3_Rep1_input_SRR4430555_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K4me1_ChIP_set2_input_set2_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K4me3_ChIP_set2_input_set2_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K9me1_ChIP_set5_input_set5_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K9me2_ChIP_set5_input_set5_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K27me1_ChIP_set5_input_set5_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K27me3_ChIP_set2_input_set2_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H3K36me3_ChIP_set5_input_set5_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H2AW6_ChIP_set1_input_set1_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H2AW7_ChIP_set2_input_set2_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H2AX_ChIP_set1_input_set1_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  /home/ajt200/analysis/histones_10dps_seedling_Berger_2020/snakemake_ChIPseq_t2t-col.20210610/mapped/both/log2ChIPcontrol/log2_H2AZ_ChIP_set1_input_set1_MappedOn_t2t-col.20210610_lowXM_both_sort_norm_binSize${binName}.bw \
  --out WT_CTL3.9_tracks_${binName}.ini

source deactivate
