#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
WHI_SHARE=$HOME/anbennett2/scratch/datasets/processed_data/WHI_SHARE
## Define combined consent group directories:
WHI_SHARE_aa_cb_p2o=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plink2out
WHI_SHARE_ha_cb_p2o=${WHI_SHARE}/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out
rscripts=$HOME/gwas_pancan/scripts/WHI/plink

### Step 1 ###

# Investigate missingness per individual and per SNP and make histograms.
echo "Investigating missingness per individuals for african american"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_updated --missing
echo "Investigating missingness per individuals for hispanic american"
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_updated --missing
# output: plink.imiss and plink.lmiss, these files show respectively the proportion of missing SNPs per individual and the proportion of missing individuals per SNP.


# Generate plots to visualize the missingness results.
#Rscript --no-save "${rscripts}"/hist_miss.R

# Delete SNPs and individuals with high levels of missingness, explanation of this and all following steps can be found in box 1 and table 1 of the article mentioned in the comments of this script.
# The following two QC commands will not remove any SNPs or individuals. However, it is good practice to start the QC with these non-stringent thresholds.
# Delete SNPs with missingness >0.2.
echo "Delete SNPs with a missingness of more than 0.2"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_updated --geno 0.2 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_2
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_updated --geno 0.2 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_2

# Delete individuals with missingness >0.2.
echo "Delete individuals with a missingness of more than 0.2"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_2 --mind 0.2 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_3
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_2 --mind 0.2 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_3

# Delete SNPs with missingness >0.02.
echo "Delete SNPs with a missingness of more than 0.02"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_3 --geno 0.02 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_4
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_3 --geno 0.02 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_4


# Delete individuals with missingness >0.02.
echo "Delete individuals with a missingness of more than 0.02"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_4 --mind 0.02 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_5
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_4 --mind 0.02 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_5


### Step2 #### - Check for sex discrepancy.

##  All individuals in this dataset are definitely female therefore no need to complete this step.

#gender_check.R

### Step 3 ### - Minor Allele Frequency

# Generate a plot of the MAF distribution.
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_5 --freq --out "${WHI_SHARE_aa_cb_p2o}"/MAF_check
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_aa_temp_5 --freq --out "${WHI_SHARE_aa_cb_p2o}"/MAF_check
# --freq ['zs'] ['counts']

# Use Rscript --no-save MAF_check.R to plot this.
Rscript --no-save "${rscripts}"/MAF_check.R

# Calculate MAFs. Remove all variants with MAF < 0.05 from the current analysis.
echo "Delete variants with a minor allele frequency of more than 0.05"
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_5 --maf 0.05 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_6
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_5 --maf 0.05 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_6


# Delete SNPs which are not in Hardy-Weinberg equilibrium (HWE).
# Check the distribution of HWE p-values of all SNPs.
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_6 --hardy --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_6_hardy
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_6 --hardy --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_6_hardy

# Selecting SNPs with HWE p-value below 0.00001, required for one of the two plot generated by the next Rscript, allows to zoom in on strongly deviating SNPs.
awk '{ if ($9 <0.00001) print $0 }' "${WHI_SHARE_aa_cb_p2o}"/plink2.hardy > "${WHI_SHARE_aa_cb_p2o}"/plink2zoomhwe.hardy
awk '{ if ($9 <0.00001) print $0 }' "${WHI_SHARE_ha_cb_p2o}"/plink2.hardy > "${WHI_SHARE_ha_cb_p2o}"/plink2zoomhwe.hardy
#Rscript --no-save "${rscripts}"/hwe.R

# By default the --hwe option in plink only filters for controls.
# Therefore, we use two steps, first we use a stringent HWE threshold for controls, followed by a less stringent threshold for the case data.
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_6 --hwe 1e-6 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_filter_step1
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_6 --hwe 1e-6 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_filter_step1


# The HWE threshold for the cases filters out only SNPs which deviate extremely from HWE.
# This second HWE step only focusses on cases because in the controls all SNPs with a HWE p-value < hwe 1e-6 were already removed
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_filter_step1 --hwe 1e-10 --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_7
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_filter_step1 --hwe 1e-10 --make-pgen --out "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_7


# Checks for heterozygosity are performed on a set of SNPs which are not highly correlated.
# Therefore, to generate a list of non-(highly)correlated SNPs, we exclude high inversion regions (inversion.txt [High LD regions]) and prune the SNPs using the command --indep-pairwise�.
# The parameters �50 5 0.2� stand respectively for: the window size, the number of SNPs to shift the window at each step, and the multiple correlation coefficient for a SNP being regressed on all other SNPs simultaneously.
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_7 --exclude "${WHI_SHARE_aa_cb_p2o}"/inversion.txt --indep-pairwise 50 5 0.2 --out "${WHI_SHARE_aa_cb_p2o}"/indepSNP
plink2 --pfile "${WHI_SHARE_ha_cb_p2o}"/WHI_SHARE_ha_temp_7 --exclude "${WHI_SHARE_ha_cb_p2o}"/inversion.txt --indep-pairwise 50 5 0.2 --out "${WHI_SHARE_ha_cb_p2o}"/indepSNP

#plink --pfile /WHI_SHARE_aa_temp_7 --extract indepSNP.prune.in --het --out R_check
# This file contains the pruned data set.


# Plot of the heterozygosity rate distribution
#Rscript --no-save "${rscripts}"/check_heterozygosity_rate.R


# The following code generates a list of individuals who deviate more than 3 standard deviations from the heterozygosity rate mean.
#Rscript --no-save "${rscripts}"/heterozygosity_outliers_list.R
