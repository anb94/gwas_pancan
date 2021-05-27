#!/bin/bash
# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI

## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout
WHI_SHARE_cb=${WHI_SHARE}/combined_consentgroups/geno
snpdir=$HOME/scratch
snp_annotations=${snpdir}/snp_annot_grch37_nodups.txt

# Import dosage and general cleanup using plink2
plink2 --import-dosage ${WHI_SHARE_aa_cb}/SHARE_ha.pdat \
	--psam ${WHI_SHARE_aa_cb}/SHAREchr1aa.pfam  \
	--exclude ${WHI_SHARE_aa_cb}/lowqualsnps/SHARE_aa_lq03_snps.txt \
	--update-name ${snp_annotations} 3 6 \
	--ref-allele ${snp_annotations} 4 3 \
	--maf 0.001 \
	--make-pgen \
	--out $DIR/whi_tmp
