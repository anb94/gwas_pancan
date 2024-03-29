#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

for ((i=1; i<=22; i++)); do
echo "Doing SHAREchr${i}aa.info"
paste ${WHI_SHARE_aa_cb}/SHAREchr"${i}"aa.info <(cut -f 1 ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.info | cut -d ":" -f 1,2 | sed 's/SNP/CHR_POS/') > ${WHI_SHARE_aa_cb}/SHAREchr"${i}"aa.pos
echo "Doing SHAREchr${i}ha.info"
paste ${WHI_SHARE_ha_cb}/SHAREchr"${i}"ha.info <(cut -f 1 ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.info | cut -d ":" -f 1,2 | sed 's/SNP/CHR_POS/') > ${WHI_SHARE_ha_cb}/SHAREchr"${i}"ha.pos
done
