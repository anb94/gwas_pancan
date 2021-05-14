#!/bin/bash
# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI

## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout
WHI_SHARE_cb=${WHI_SHARE}/combined_consentgroups/geno


tail -n +2 ${WHI_SHARE_aa_cb}/SHARE_aa.pdat | awk '{print $1,$2,$3}' | sort > ${WHI_SHARE_aa_cb}/SHARE_aa.snpset
tail -n +2 ${WHI_SHARE_ha_cb}/SHARE_ha.pdat | awk '{print $1,$2,$3}' | sort > ${WHI_SHARE_ha_cb}/SHARE_ha.snpset


echo "$(comm -12 ${WHI_SHARE_aa_cb}/SHARE_aa.snpset ${WHI_SHARE_ha_cb}/SHARE_ha.snpset)" > ${WHI_SHARE_cb}/SHARE_sharedsnps.txt
echo "$(cut -d ' ' -f 1 ${WHI_SHARE_cb}/SHARE_sharedsnps.txt)" > ${WHI_SHARE_cb}/SHARE_shared_alleles_snps.txt
