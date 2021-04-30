#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype

# This still will need to be performed on a machine which has installed dose2plink.c 
# This can be acquired at https://github.com/anb94/plink-ng
# Alternatively, a singularity definition file which includes dose2plink.c can be found at ------


# Use the dose2plink to convert African American group .dose and .info to .pdat and .pfam:
for ((i=10; i<=22; i++)); do
    echo "Converting .info and .dose for African American Chromosome ${i}"
    dose2plink -m 7000 -dose "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.dose.cb -info "${WHI_SHARE_aa_cb}"/SHAREchr"${i}"aa.info -gz 0 -out "${WHI_SHARE_aa_cb}"/testing-dose2plinkout/SHAREchr"${i}"aa
done


echo "Completed African American Chromosomes"

# Use the dose2plink to convert Hispanic American group .dose and .info to .pdat and .pfam:
for ((i=1; i<=22; i++)); do
    echo "Converting .info and .dose for Hispanic American Chromosome ${i}"
    dose2plink -m 7000 -dose "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.dose.cb -info "${WHI_SHARE_ha_cb}"/SHAREchr"${i}"ha.info -gz 0 -out "${WHI_SHARE_ha_cb}"/testing-dose2plinkout/SHAREchr"${i}"ha
done

echo "Completed Hispanic American Chromosomes"


