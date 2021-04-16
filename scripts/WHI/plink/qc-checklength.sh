#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/dbgap_data/WHI/
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# For each chromosome, the number of rows in .info should equal n-1 of number of columns in .dose
# This information will be retreived using awk and stored in a log file within the ethnicities directory.

# African American
for ((i=1; i<=22; i++)); do
    echo "Doing AA Chromosome ${i}"
    info=$(awk 'END{print NR}' "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.info)
    dose=$(awk 'END{print NF}' "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.dose.cb)
    echo "Chromosome ${i} info has ${info} rows and dose has ${dose} columns"  >> "${WHI_SHARE_aa_cb}"/qc-checklength.log
done

# Hispanic American
for ((i=1; i<=22; i++)); do
    echo "Doing HA Chromosome ${i}"
    info=$(awk 'END{print NR}' "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.info)
    dose=$(awk 'END{print NF}' "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.dose.cb)
    echo "Chromosome ${i} info has ${info} rows and dose has ${dose} columns"  >> "${WHI_SHARE_ha_cb}"/qc-checklength.log
done