# Analysing WHI Data with PLINK

##  Preparing WHI Data for Analysis PLINK 

## Step 1: Combine Consent Groups

The initial step requires the merging of the .dose files for consent groups 1 and 2 for chromosomes 1 to 22. Merging of the .info files is unnecessary due to the fact that they already contain
information for both consent groups.

File: combineconsentgroups.sh

## Step 2: Identification of low quality SNPs

The .info files will be copied to the combined consent group directory for clarity (as they already contain information for both consent groups). 
Using these copied files, low quality SNPs (one threshold as 0.3 and another with 0.8) with will be identified and stored in the respective files for later use.

File: identifylowqualsnps.sh

## Step 3: Quality Check for Info and Dose Match

The number of rows in the .info file should be equal to the number of columns in the .dose file -1 (due to one column being an identifier for the individual).

File: qc-checklength.sh

## Step 4: Conversion of .dose and .info to .pdat and .pfam files

This step requires the use of dose2plink written by Prof. Sarah Medland and can be acquired at http://genepi.qimr.edu.au/staff/sarahMe/mach2merlin/dose2plink.zip.

File: doseinfoconversion.sh

##