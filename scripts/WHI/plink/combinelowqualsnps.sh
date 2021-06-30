#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/lowqualsnps
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/lowqualsnps

# The pdat files for each chromosome need to be combined into a single file.

## African American
## Append the low qual 0.3 snp files to a combined file

for ((i=1; i<=22; i++)); do
    echo "Doing SHARE_aa lq03 ${i}"
    cat "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa_lq03_snps.txt >> "${WHI_SHARE_aa_cb}"/SHARE_aa_lq03_snps.txt
done

## Append the low qual 0.8 snp files to a combined file
for ((i=1; i<=22; i++)); do
    echo "Doing SHARE_aa lq08 ${i}"
    cat "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa_lq08_snps.txt >> "${WHI_SHARE_aa_cb}"/SHARE_aa_lq08_snps.txt
done

cat "${WHI_SHARE_aa_cb}"/SHARE_aa_lq03_snps.txt >> "${WHI_SHARE_aa_cb}"/SHARE_aa_lq_all_snps.txt
cat "${WHI_SHARE_aa_cb}"/SHARE_aa_lq08_snps.txt >> "${WHI_SHARE_aa_cb}"/SHARE_aa_lq_all_snps.txt
## Hispanic American
## Append the low qual 0.3 snp files to a combined file
for ((i=2; i<=22; i++)); do
    echo "Doing SHARE_ha lq03 ${i}"
    cat "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha_lq03_snps.txt >> "${WHI_SHARE_ha_cb}"/SHARE_ha_lq03_snps.txt
done

## Append the low qual 0.8 snp files to a combined file
for ((i=2; i<=22; i++)); do
    echo "Doing SHARE_ha lq08 ${i}"
    cat "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha_lq08_snps.txt >> "${WHI_SHARE_ha_cb}"/SHARE_ha_lq08_snps.txt
done

cat "${WHI_SHARE_ha_cb}"/SHARE_ha_lq03_snps.txt >> "${WHI_SHARE_ha_cb}"/SHARE_ha_lq_all_snps.txt
cat "${WHI_SHARE_ha_cb}"/SHARE_ha_lq08_snps.txt >> "${WHI_SHARE_ha_cb}"/SHARE_ha_lq_all_snps.txt
