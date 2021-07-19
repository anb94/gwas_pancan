#!/bin/bash
# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI

## Define combined consent group directories:

WHI_SHARE_cb_geno=${WHI_SHARE}/combined_consentgroups/geno

WHI_SHARE_aa_cb=${WHI_SHARE_cb_geno}/WHI_SHARE_aa.genotype
WHI_SHARE_aa_dose2plink=${WHI_SHARE_aa_cb}/dose2plinkout

WHI_SHARE_ha_cb=${WHI_SHARE_cb_geno}/WHI_SHARE_ha.genotype
WHI_SHARE_ha_dose2plink=${WHI_SHARE_ha_cb}/dose2plinkout

SHARE_aa_plink2out=${WHI_SHARE_aa_cb}/plink2out
SHARE_ha_plink2out=${WHI_SHARE_ha_cb}/plink2out

plink2 --import-dosage "${WHI_SHARE_aa_dose2plink}"/SHARE_aa.pdat \
	--psam "${WHI_SHARE_cb_geno}"/SHARE_aa.pfam \
	--exclude "${WHI_SHARE_aa_cb}"/lowqualsnps/SHARE_aa_lq_all_snps.txt \
	--make-pgen \
	--out "${SHARE_aa_plink2out}"/WHI_SHARE_aa_temp

plink2 --import-dosage "${WHI_SHARE_ha_dose2plink}"/SHARE_ha.pdat \
	--psam "${WHI_SHARE_cb_geno}"/SHARE_ha.pfam \
	--exclude "${WHI_SHARE_ha_cb}"/lowqualsnps/SHARE_ha_lq_all_snps.txt \
	--make-pgen \
	--out "${SHARE_ha_plink2out}"/WHI_SHARE_ha_temp
