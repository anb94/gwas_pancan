#!/bin/bash
# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI

## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout

awk '{print 0,$1,0,0}' ${WHI_SHARE_aa_cb}/SHARE_aa.pdat > ${WHI_SHARE_aa_cb}/SHARE_aa.map
awk '{print 0,$1,0,0}' ${WHI_SHARE_ha_cb}/SHARE_ha.pdat > ${WHI_SHARE_ha_cb}/SHARE_ha.map