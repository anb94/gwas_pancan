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

This step requires the use of the dose2plink tool by Christopher Chang https://github.com/chrchang/plink-ng. The version used here is a fork from github.com/chrchang/plink-ng found at
https://github.com/anb94/plink-ng. Modifications have been made to plink-ng/1.9/dose2plink.c in order to be able to compile with system zlib. The canary_v4.def container in this repo 
(https://github.com/anb94/gwas_pancan/blob/master/singularity_images/custom_singularity_images/canary_v4.def) contains this tool and can be used for this step.


File: doseinfoconversion.sh (run script inside a container built from canary_v4.def)

### Step 5: Combine pdat files and correct pfam file.

This step will combine the pdat files of each chromosome into a single file pdat file. Also, dose2plink creates a pfam for each chromosome, even though all should be identical (as they
contain an individual's information), therefore, a single will be made for each dataset which is labelled appropriately and corrects the gender of individuals.


File: combinepdat.sh correctpfam.sh

### Step 6: Generate Phenotype data

The phenotype data for the dataset must be extracted from the forms provided by dbGaP and put in a format accepted by plink and other tools. Additionally, we will isolate covariates
used in the analysis during this process.


File: generatephenodata.py

### Step 7: Use phenotype data to prepare the pfam file for use with plink

As is, the pfam file is generic - i.e. it does not contain case vs control information or family ID. To correct this, we will use the phenotype data generated in the step above to
amend the pfam file.


File: preparepfam.py

### Step : Combine low quality SNPs

The low quality snp files created in step 2 will be combined into a single file for each threshold per group and then also combined into a single file per group.


File: combinelowqualnp.sh

### Step : Identification of shared SNPs

SNPs that are common between SHARE_aa and SHARE_ha will be identified and saved to an output file in this step.


File: idsharedsnps.sh

### Step : Download Reference Genome & Extract the RSID of the SNPs

A reference genome is needed to add a unique RSID to SNPs in later steps and is therefore downloaded in this step. 


File: getrefgenome.sh

### Step : Generate posfile for info files and concatenate

In order to extract RSID for these positions, a new column must be added to .info files which contain only chr:position - matching the format of the column in the ref genome file.
Output is saved with same file name but .info suffix is replaced with .pos suffix.


File: generateposfile.sh combineposfiles.sh

### Step : Extract RSID of Data

A python script is used to extract RSIDs from the reference genome and be added to the posfile so they can be added to the plink files at a later step. The output is saved as a new
file; SHARE_aa_rsid.txt and SHARE_ha_rsid.txt


File: getrsid.py

### Step : Generate map file

A MAP file for our dataset (which contains a list of SNPs and their location) must be created for use with PLINK (see https://zzz.bwh.harvard.edu/plink/data.shtml#map).


File: generatemap.sh


## Part 2: Analysis Using PLINK

### Step 1: Import dosage .pdat files to plink2

For use in plink, the dosage files need to be imported into plink2 format.


File: plink2-importdosage.sh

### Step 2: Correct pfiles

Once the files have been imported into plink format the chromosome and position information must be updated as they are currently null. To do this we will use information that is
present within the pvar file.


File: correctpfiles.sh

### Step: PLINK QC

The first steps of the quality control must be performed to remove missing and poor quality data.


File: plink2-qc.sh

### Step