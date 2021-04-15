# Analysing WHI Data with PLINK

##  Preparing WHI Data for Analysis PLINK 

## Step 1: Combine Consent Groups

The initial step requires the merging of the .dose files for consent groups 1 and 2 for chromosomes 1 to 22. Merging of the .info files is unnecessary due to the fact that they already contain
information for both consent groups.

File: combineconsentgroups.sh

## Step 2: Identification of low quality SNPs

The .info files will be copied to the combined consent group directory and low quality SNPs will be identified using the .info files mentioned above 

File: identifylowqualsnps.sh

## Step 3: Quality Check for Info and Dose Match

The number of rows in the .info file should be equal to the number of columns in the .dose file -1 (Due to one column being an identifier for the individual).

File: qc-checklength.sh

##