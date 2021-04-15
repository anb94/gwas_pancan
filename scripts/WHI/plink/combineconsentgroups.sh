#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/dbgap_data/WHI/
## Define African American consent group 1 and 2 variables:
WHI_SHARE_aa_c1=${WHI_SHARE}/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/
WHI_SHARE_aa_c2=${WHI_SHARE}/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/
## Define Hispanic American consent group 1 and 2 variables:
WHI_SHARE_ha_c1=${WHI_SHARE}/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c1/
WHI_SHARE_ha_c2=${WHI_SHARE}/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# Concatenate consent groups 1 and 2 for African American
for ((i=1; i<=22; i++)); do
    echo "Concatenating African American c1 and c2 for chromosome ${i}"
    cat ${WHI_SHARE_aa_c1}/SHAREchr${i}aa.dose.c1 ${WHI_SHARE_aa_c2}/SHAREchr${i}aa.dose.c2 > ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.dose.cb
done
echo "Completed Concatenating African American Consent Groups"

# Concatenate consent groups 1 and 2 for Hispanic American
for ((i=1; i<=22; i++)); do
    echo "Concatenating Hispanic American c1 and c2 for chromosome ${i}"
    cat ${WHI_SHARE_ha_c1}/SHAREchr${i}ha.dose.c1 ${WHI_SHARE_ha_c2}/SHAREchr${i}ha.dose.c2 > ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.dose.cb
done
echo "Completed Concatenating Hispanic American Consent Groups"

