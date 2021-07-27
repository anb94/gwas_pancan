#!/bin/bash
# Define environment variables
## Define combined consent group directories:
WHI_SHARE_aa_cb_p2o=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plink2out
WHI_SHARE_ha_cb_p2o=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out

## Step 3.1: Import dosage files into PLINK2 format

# Import dosage files for SHARE_aa excluding the low quality snps identified earlier
echo "importing dosage files for SHARE African Americans..."
plink2 --import-dosage "${WHI_SHARE_aa_cb_d2po}"/SHARE_aa.pdat \
	--psam "${WHI_SHARE_aa_cb_d2po}"/SHARE_aa.pfam \
	--exclude "${WHI_SHARE_aa_cb_lq}"/SHARE_aa_lq_all_snps.txt \
	--make-pgen \
	--out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp
echo "Done"

echo "importing dosage files for SHARE Hispanic Americans Americans..."
# Import dosage files for SHARE_ha excluding the low quality snps identified earlier
plink2 --import-dosage "${WHI_SHARE_ha_cb_d2po}"/SHARE_ha.pdat \
	--psam "${WHI_SHARE_ha_cb_d2po}"/SHARE_ha.pfam \
	--exclude "${WHI_SHARE_ha_cb_lq}"/SHARE_ha_lq_all_snps.txt \
	--make-pgen \
	--out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp
echo "Done"

