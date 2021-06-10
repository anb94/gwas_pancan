# Analysing WHI Data with PLINK

## Part 1: Preparing WHI Data for PLINK 

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

### Step 5: Combine pdat files and correct pfam file.

This step will combine the pdat files of each chromosome into a single file pdat file. Also, dose2plink creates a pfam for each chromosome, even though all should be identical (as they
contain an individual's information), therefore, a single will be made for each dataset which is labelled appropriately and corrects the gender of individuals.


File: combinepdat.sh correctpfam.sh

### Step 6: Combine low quality SNPs

The low quality snp files created in step 2 will be combined into a single file for each threshold per group and then also combined into a single file per group.


File: combinelowqualnp.sh

### Step 7: Identification of shared SNPs

SNPs that are common between SHARE_aa and SHARE_ha will be identified and saved to an output file in this step.


File: idsharedsnps.sh

### Step 8: Download Reference Genome & Extract RSID of SNPs

A reference genome is needed to add a unique RSID to SNPs in later steps and is therefore downloaded in this step. 


File: getrefgenome.sh

### Step 9: Generate posfile for info files and concatenate

In order to extract RSID for these positions, a new column must be added to .info files which contain only chr:position - matching the format of the column in the ref genome file.
Output is saved with same file name but .info suffix is replaced with .pos suffix.


File: generateposfile.sh combineposfiles.sh

### Step 10: 

A python script is used to extract RSIDs from the reference genome and be added to the posfile so they can be added to the plink files at a later step. The output is saved as a new
file; SHARE_aa_rsid.txt and SHARE_ha_rsid.txt


File: getrsid.py

### Step 11: Generate map file

A MAP file for our dataset (which contains a list of SNPs and their location) must be created for use with PLINK (see https://zzz.bwh.harvard.edu/plink/data.shtml#map).


File: generatemap.sh

### Step 12: 

## Part 2: Analysis Using PLINK

### Step 1: Import .pdat files to plink2

