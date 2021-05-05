# Analysing WHI Data with PLINK

##  Preparing WHI Data for Analysis PLINK 

### Step 1: Combine Consent Groups

The initial step requires the merging of the .dose files for consent groups 1 and 2 for chromosomes 1 to 22. Merging of the .info files is unnecessary due to the fact that they already contain
information for both consent groups.

File: combineconsentgroups.sh

### Step 2: Identification of low quality SNPs

The .info files will be copied to the combined consent group directory for clarity (as they already contain information for both consent groups). 
Using these copied files, low quality SNPs (one threshold as 0.3 and another with 0.8) with will be identified and stored in the respective files for later use.

File: identifylowqualsnps.sh

### Step 3: Quality Check for Info and Dose Match

The number of rows in the .info file should be equal to the number of columns in the .dose file -1 (due to one column being an identifier for the individual).

File: qc-checklength.sh

### Step 4: Conversion of .dose and .info to .pdat and .pfam files

This step requires the use of the dose2plink tool originally written by Prof. Sarah Medland (acquired at http://genepi.qimr.edu.au/staff/sarahMe/mach2merlin/dose2plink.zip) and since
rewritten in C by Christopher Chang https://github.com/chrchang/plink-ng. The version used here is a fork from github.com/chrchang/plink-ng found at https://github.com/anb94/plink-ng.


File: doseinfoconversion.sh (using container built from canary_v3.def)

### Step 5: Combine pdat files

This step will combine the pdat files for each chromosome into a single file.

File: combinepdat.sh

### Step 6: Combine low quality snps

The low quality snp files created in step 2 will be combined into a single file for each group and threshold.

File: combinelowqualnp.sh


### Step 7: Download Reference Genome & Extract RSID

A reference genome is needed to add a unique RSID to SNPs in later steps.

File: getrefgenome.sh

### Step 8:

