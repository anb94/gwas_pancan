# Analysing WHI Data with PLINK

##  Preparing WHI Data for Analysis PLINK 

## Step 1 - Combine Consent Groups

The initial step requires the merging of the .dose files for consent groups 1 and 2 for chromosomes 1 to 22. Merging of the .info files is unnecessary due to the fact that they already contain
information for both consent groups.

This step will use the combineconsentgroups.sh script.

## Set 2 - Identification of low quality SNPs

Low quality SNPs will be identified using the .info files mentioned above using the identifylowqualsnps.sh script.


