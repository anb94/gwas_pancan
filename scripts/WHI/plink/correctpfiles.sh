#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plin2kout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out


# Print the 3rd column called ID from the pvar file and split it based on ':' then take the first and second element. Take off the header and add a new header and add to new file
awk 'BEGIN{FS="\t"; OFS="\t"}{print $3}' ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp.pvar | awk 'BEGIN{FS=":";OFS="\t"}{print $1,$2}' | tail -n+2 | sed '1i #CHROM POS' > ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp_chrpos.pvar
# Paste the original pvar and the new intermediate file into another intermediate file
paste ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp.pvar ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp_chrpos.pvar > ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp_w_chrpos.pvar
# Make a new pvar file with the corrected columns
awk 'BEGIN{FS="\t";OFS="\t"}{print $6,$7,$3,$4,$5}' WHI_SHARE_aa_temp_w_chrpos.pvar > WHI_SHARE_aa_temp_updated.pvar
# Copy the other pfiles with a matching name so that plink2 knows they are together.
cp ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp.psam ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp_updated.psam
cp  ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp.pgen ${WHI_SHARE_aa_cb}/WHI_SHARE_aa_temp_updated.pgen

# Print the 3rd column called ID from the pvar file and split it based on ':' then take the first and second element. Take off the header and add a new header and add to new file
awk 'BEGIN{FS="\t"; OFS="\t"}{print $3}' ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp.pvar | awk 'BEGIN{FS=":";OFS="\t"}{print $1,$2}' | tail -n+2 | sed '1i #CHROM POS' > ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp_chrpos.pvar
# Paste the original pvar and the new intermediate file into another intermediate file
paste ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp.pvar ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp_chrpos.pvar > ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp_w_chrpos.pvar
# Make a new pvar file with the corrected columns
awk 'BEGIN{FS="\t";OFS="\t"}{print $6,$7,$3,$4,$5}' WHI_SHARE_ha_temp_w_chrpos.pvar > WHI_SHARE_ha_temp_updated.pvar
# Copy the other pfiles with a matching name so that plink2 knows they are together.
cp ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp.psam ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp_updated.psam
cp  ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp.pgen ${WHI_SHARE_ha_cb}/WHI_SHARE_ha_temp_updated.pgen