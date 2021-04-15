#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/dbgap_data/WHI/
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# Directory containing dose2plink script (information on this script in README.md file)
dose2plink_dir=${HOME}/gwas_pancan/scripts/WHI/plink/

# Use the dose2plink perl script on African American group:
for ((i=1; i<=22; i++)); do
    echo "Converting .info and .dose for African American Chromosome ${i}"
    perl ${dose2plink_dir}/dose2plink.pl -dose ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.dose.cb -info ${WHI_SHARE_aa_cb}/SHAREchr${i}aa.info -gz 0 -out ${WHI_SHARE_aa_cb}/dose2plinkout/SHAREchr${i}aa
done

echo "Completed African American Chromosomes"

# Use the dose2plink perl script on Hispanic American group:
for ((i=1; i<=22; i++)); do
    echo "Converting .info and .dose for Hispanic American Chromosome ${i}"
    perl ${dose2plink_dir}/dose2plink.pl -dose ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.dose.cb -info ${WHI_SHARE_ha_cb}/SHAREchr${i}ha.info -gz 0 -out ${WHI_SHARE_ha_cb}/dose2plinkout/SHAREchr${i}ha
done

echo "Completed Hispanic American Chromosomes"