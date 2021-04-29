#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout


cat "${WHI_SHARE_aa_cb}"/SHAREchr1aa.pdat > "${WHI_SHARE_aa_cb}"/SHARE_aa.pdat
for ((i=2; i<=22; i++)); do
    cat "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.pdat | tail -n +2 >> "${WHI_SHARE_aa_cb}"/SHARE_aa.pdat
done


cat "${WHI_SHARE_ha_cb}"/SHAREchr1ha.pdat > "${WHI_SHARE_ha_cb}"/SHARE_ha.pdat
for ((i=2; i<=22; i++)); do
    cat "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.pdat | tail -n +2 >> "${WHI_SHARE_ha_cb}"/SHARE_ha.pdat
done

