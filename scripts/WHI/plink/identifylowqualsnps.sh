#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/dbgap_data/WHI

## Define African American and Hispanic American consent group 1 variables:
WHI_SHARE_aa_c1=${WHI_SHARE}/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1
WHI_SHARE_ha_c1=${WHI_SHARE}/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c1

## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype

for ((i=1; i<=22; i++)); do
    echo "Copying Files and Generating low quality SNPs for African Americans"
    echo "Doing Chromosome number ${i}"

    cp ${WHI_SHARE_aa_c1}/SHAREchr${i}aa.info ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.info

    awk '{if ($7 < 0.3) print $1}' ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.info > ${WHI_SHARE_aa_cb}/lowqualsnps/SHAREchr${i}aa_lq03_snps.txt
    awk '{if ($7 < 0.8) print $1}' ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.info > ${WHI_SHARE_aa_cb}/lowqualsnps/SHAREchr${i}aa_lq08_snps.txt
done

echo "Completed Generating low quality SNPs for African Americans"

for ((i=1; i<=22; i++)); do
    echo "Copying Files and Generating low quality SNPs for Hispanic Americans"
    echo "Doing Chromosome number ${i}"

    cp ${WHI_SHARE_ha_c1}/SHAREchr${i}ha.info ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.info

    awk '{if ($7 < 0.3) print $1}' ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.info > ${WHI_SHARE_ha_cb}/lowqualsnps/SHAREchr${i}ha_lq03_snps.txt
    awk '{if ($7 < 0.8) print $1}' ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.info > ${WHI_SHARE_ha_cb}/lowqualsnps/SHAREchr${i}ha_lq08_snps.txt
done

echo "Completed Generating low quality SNPs for Hispanic Americans"
