#!/bin/bash
# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI

## Define consent group directories:
WHI_SHARE_c1=${WHI_SHARE}/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files
WHI_SHARE_c2=${WHI_SHARE}/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files



## Define combined consent group directories:
WHI_SHARE_cb=${WHI_SHARE}/combined_consentgroups/geno


cat ${WHI_SHARE_c1}/WHI_GWAS_relatedness_information.csv > ${WHI_SHARE_cb}/WHI_GWAS_relatedness_information_cb.csv
cat ${WHI_SHARE_c2}/WHI_GWAS_relatedness_information.csv >> ${WHI_SHARE_cb}/WHI_GWAS_relatedness_information_cb.csv

