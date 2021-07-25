#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/scratch/dbgap_data/WHI
## Define combined consent group directories:
WHI_SHARE_aa_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plink2out
WHI_SHARE_ha_cb=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out

### Step 1 ### 

# Investigate missingness per individual and per SNP and make histograms.
echo "Investigating missingness per individuals for african american"
plink2 --pfile "${WHI_SHARE_aa_cb}"/SHARE_aa_temp_updated --missing
echo "Investigating missingness per individuals for hispanic american"
plink2 --pfile "${WHI_SHARE_ha_cb}"/SHARE_ha_temp_updated --missing
# output: plink.imiss and plink.lmiss, these files show respectively the proportion of missing SNPs per individual and the proportion of missing individuals per SNP.


# Generate plots to visualize the missingness results.
#Rscript --no-save hist_miss.R

# Delete SNPs and individuals with high levels of missingness, explanation of this and all following steps can be found in box 1 and table 1 of the article mentioned in the comments of this script.
# The following two QC commands will not remove any SNPs or individuals. However, it is good practice to start the QC with these non-stringent thresholds.  
# Delete SNPs with missingness >0.2.
echo "Delete SNPs with a missingness of more than 0.2"
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_updated --geno 0.2 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_2
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_updated --geno 0.2 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_2

# Delete individuals with missingness >0.2.
echo "Delete individuals with a missingness of more than 0.2"
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_2 --mind 0.2 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_3
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_2 --mind 0.2 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_3

# Delete SNPs with missingness >0.02.
echo "Delete SNPs with a missingness of more than 0.02"
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_3 --geno 0.02 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_4
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_3 --geno 0.02 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_4


# Delete individuals with missingness >0.02.
echo "Delete individuals with a missingness of more than 0.02"
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_4 --mind 0.02 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_5
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_4 --mind 0.02 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_5



### Step2 #### - Check for sex discrepancy.


##  All individuals in this dataset are female.



### Step 3 ### - Minor Allele Frequency

# Generate a plot of the MAF distribution.
#plink2 --pfile WHI_SHARE_aa_temp_5 --freq --out MAF_check
#Rscript --no-save MAF_check.R

# Calculate MAFs. Remove all variants with MAF < 0.05 from the current analysis.
echo "Delete variants with a minor allele frequency of more than 0.05"
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_5 --maf 0.05 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_6
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_5 --maf 0.05 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_6


# Delete SNPs which are not in Hardy-Weinberg equilibrium (HWE).
# Check the distribution of HWE p-values of all SNPs.
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_6 --hardy
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_6 --hardy

awk '{ if ($9 <0.00001) print $0 }' "${WHI_SHARE_aa_cb}"/plink2.hardy > "${WHI_SHARE_aa_cb}"/plink2zoomhwe.hardy
awk '{ if ($9 <0.00001) print $0 }' "${WHI_SHARE_ha_cb}"/plink2.hardy > "${WHI_SHARE_ha_cb}"/plink2zoomhwe.hardy


# By default the --hwe option in plink only filters for controls.
# Therefore, we use two steps, first we use a stringent HWE threshold for controls, followed by a less stringent threshold for the case data.
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_6 --hwe 1e-6 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_filter_step1
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_6 --hwe 1e-6 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_filter_step1


# The HWE threshold for the cases filters out only SNPs which deviate extremely from HWE. 
# This second HWE step only focusses on cases because in the controls all SNPs with a HWE p-value < hwe 1e-6 were already removed
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_filter_step1 --hwe 1e-10 --make-pgen --out "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_7
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_filter_step1 --hwe 1e-10 --make-pgen --out "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_7


# Checks for heterozygosity are performed on a set of SNPs which are not highly correlated.
# Therefore, to generate a list of non-(highly)correlated SNPs, we exclude high inversion regions (inversion.txt [High LD regions]) and prune the SNPs using the command --indep-pairwise�.
# The parameters �50 5 0.2� stand respectively for: the window size, the number of SNPs to shift the window at each step, and the multiple correlation coefficient for a SNP being regressed on all other SNPs simultaneously.
plink2 --pfile "${WHI_SHARE_aa_cb}"/WHI_SHARE_aa_temp_7 --exclude inversion.txt --indep-pairwise 50 5 0.2 --out "${WHI_SHARE_aa_cb}"/indepSNP
plink2 --pfile "${WHI_SHARE_ha_cb}"/WHI_SHARE_ha_temp_7 --exclude inversion.txt --indep-pairwise 50 5 0.2 --out "${WHI_SHARE_ha_cb}"/indepSNP

#plink --pfile /WHI_SHARE_aa_temp_7 --extract indepSNP.prune.in --het --out R_check
# This file contains the pruned data set.

