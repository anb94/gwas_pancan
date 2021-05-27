#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# The pdat files for each chromosome need to be combined into a single file.

## African American
## Add the first file into a new pos file and then append the rest of the files without the header
cat "${WHI_SHARE_aa_cb}"/SHAREchr1aa.pos > "${WHI_SHARE_aa_cb}"/SHARE_aa.pos
for ((i=2; i<=22; i++)); do
    echo "Doing SHARE_aa ${i}"
    cat "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.pos | tail -n +2 >> "${WHI_SHARE_aa_cb}"/SHARE_aa.pos
done

## Hispanic American
## Add the first file into a new pos file and then append the rest of the files without the header
cat "${WHI_SHARE_ha_cb}"/SHAREchr1ha.pos > "${WHI_SHARE_ha_cb}"/SHARE_ha.pos
for ((i=2; i<=22; i++)); do
    echo "Doing SHARE_ha ${i}"
    cat "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.pos | tail -n +2 >> "${WHI_SHARE_ha_cb}"/SHARE_ha.pos
done
