import pandas as pd
import numpy as np

psam_aa = pd.read_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/geno/WHI_SHARE_aa.genotype/plink2out/WHI_SHARE_aa_temp_8.psam", sep="\t", comment='#', names=["FID", "IID", "3", "4", "SEX", "Pheno"])
psam_ha = pd.read_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/geno/WHI_SHARE_ha.genotype/plink2out/WHI_SHARE_ha_temp_8.psam", sep="\t", comment='#', names=["FID", "IID", "3", "4", "SEX", "Pheno"])

covar_aa = pd.read_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/pheno/plink/SHARE_aa_covar.csv", sep="\t", comment='#')
covar_ha = pd.read_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/pheno/plink/SHARE_ha_covar.csv", sep="\t", comment='#')



share_aa_pheno = pd.read_csv("/home/anbennett2/scratch/analysis/pheno_geno_files/WHI_SHARE/pheno_variables/cb_SHARE_AA_pheno.csv", sep="\t", comment='#')
share_ha_pheno = pd.read_csv("/home/anbennett2/scratch/analysis/pheno_geno_files/WHI_SHARE/pheno_variables/cb_SHARE_HA_pheno.csv", sep="\t", comment='#')



share_aa_covar = pd.merge(left=share_aa_pheno[['scanID', 'SAMPLE_ID']], right=covar_aa, how='left', left_on='scanID', right_on='FIID')
share_aa_covariates = share_aa_covar[['SAMPLE_ID', 'AGE',  'HISTORY_DIABETES',  'PANCREATITIS',   'MEAN_BMI', 'MEAN_WHR']]

share_ha_covar = pd.merge(left=share_ha_pheno[['scanID', 'SAMPLE_ID']], right=covar_ha, how='left', left_on='scanID', right_on='FIID')
share_ha_covariates = share_ha_covar[['SAMPLE_ID', 'AGE',  'HISTORY_DIABETES',  'PANCREATITIS',   'MEAN_BMI', 'MEAN_WHR']]




cov_aa = pd.merge(left=psam_aa[['FID','IID']], right=share_aa_covariates, how='left', left_on='FID', right_on='SAMPLE_ID')
cov_aa = cov_aa[['FID', 'IID', 'AGE', 'HISTORY_DIABETES', 'PANCREATITIS']]
cov_aa.PANCREATITIS = cov_aa.PANCREATITIS.fillna(0)
cov_aa.HISTORY_DIABETES = cov_aa.HISTORY_DIABETES.fillna(0)


cov_ha = pd.merge(left=psam_ha[['FID','IID']], right=share_ha_covariates, how='left', left_on='FID', right_on='SAMPLE_ID')
cov_ha = cov_ha[['FID', 'IID', 'AGE', 'HISTORY_DIABETES', 'PANCREATITIS']]
cov_ha.PANCREATITIS = cov_ha.PANCREATITIS.fillna(0)
cov_ha.HISTORY_DIABETES = cov_ha.HISTORY_DIABETES.fillna(0)


cov_aa.to_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/pheno/plink/SHARE_aa_covariates.tsv", sep='\t', index=False, header=True)
cov_ha.to_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/pheno/plink/SHARE_ha_covariates.tsv", sep='\t', index=False)










share_aa_covariates = pd.read_csv("/home/anbennett2/scratch/datasets/processed_data/WHI_SHARE/combined_consentgroups/pheno/plink/SHARE_aa_covariates.tsv", sep="\t", comment='#')
