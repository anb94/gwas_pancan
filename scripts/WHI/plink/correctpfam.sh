#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout

awk '{print $1,$2,$3,$4,2,$6}' ${WHI_SHARE_aa_cb}/SHAREchr1aa.pfam  > ${WHI_SHARE_aa_cb}/WHI_SHARE_aa.pfam
awk '{print $1,$2,$3,$4,2,$6}' ${WHI_SHARE_ha_cb}/SHAREchr1ha.pfam  > ${WHI_SHARE_ha_cb}/WHI_SHARE_ha.pfam