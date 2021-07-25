#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plink2out
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out

echo "Generating files for african americans"
# Print the 3rd column called ID from the pvar file and split it based on ':' then take the first and second element. Take off the header and add a new header and add to new file
echo "Taking ID and splitting into chromosome and position for later use..."
awk 'BEGIN{FS="\t"; OFS="\t"}{print $3}' "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp.pvar | awk 'BEGIN{FS=":";OFS="\t"}{print $1,$2}' | tail -n+2 | sed '1i #CHROM POS' > "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_chrpos.pvar
# Paste the original pvar and the new intermediate file into another intermediate file
echo "Making temporary file..."
paste "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp.pvar "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_chrpos.pvar > "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_w_chrpos.pvar
# Make a new pvar file with the corrected columns
echo "Make new pvar file with correct chromosome and position information..."
awk 'BEGIN{FS="\t";OFS="\t"}{print $6,$7,$3,$4,$5}' "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_w_chrpos.pvar > "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_updated.pvar
# Copy the other pfiles with a matching name so that plink2 knows they are together.
echo "Copying other files in the set for plink compatibility..."
cp "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp.psam "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_updated.psam
cp  "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp.pgen "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_updated.pgen
echo "Done"

echo "Generating files for african americans"
# Print the 3rd column called ID from the pvar file and split it based on ':' then take the first and second element. Take off the header and add a new header and add to new file
echo "Taking ID and splitting into chromosome and position for later use..."
awk 'BEGIN{FS="\t"; OFS="\t"}{print $3}' "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp.pvar | awk 'BEGIN{FS=":";OFS="\t"}{print $1,$2}' | tail -n+2 | sed '1i #CHROM POS' > "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_chrpos.pvar
# Paste the original pvar and the new intermediate file into another intermediate file
echo "Making temporary file..."
paste "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp.pvar "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_chrpos.pvar > "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_w_chrpos.pvar
# Make a new pvar file with the corrected columns
echo "Make new pvar file with correct chromosome and position information..."
awk 'BEGIN{FS="\t";OFS="\t"}{print $6,$7,$3,$4,$5}' "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_w_chrpos.pvar > "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_updated.pvar
# Copy the other pfiles with a matching name so that plink2 knows they are together.
cp "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp.psam "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_updated.psam
cp  "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp.pgen "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_updated.pgen
echo "Done"

echo "Process Complete"