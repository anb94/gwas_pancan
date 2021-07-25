import pandas as pd
pd.set_option('display.max_columns', 120)

# Import the relatedness information provided by dbgap.

gwas_rel = pd.read_csv('~/scratch/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files/WHI_GWAS_relatedness_information.csv', sep=",")

#Import the pfam file output by plink

share_aa_pfam = pd.read_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/dose2plinkout/SHARE_aa.pfam', sep=" ", names=["FID", "IID", "IDoF", "IDoM", "SEX", "Pheno"])
share_ha_pfam = pd.read_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/dose2plinkout/SHARE_ha.pfam', sep=" ", names=["FID", "IID", "IDoF", "IDoM", "SEX", "Pheno"])

#import pheno data

cb_SHARE_AA_pheno = pd.read_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/pheno/plink/cb_SHARE_AA_pheno.csv', sep='\t')
cb_SHARE_HA_pheno = pd.read_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/pheno/plink/cb_SHARE_HA_pheno.csv', sep='\t')

# Copy the dfs so that we can modify without altering original loaded in dfs

SHARE_pfam_aa = share_aa_pfam.copy()
SHARE_pfam_ha = share_ha_pfam.copy()

## Add case vs control information: Case/control phenotypes are normally coded as control = 1, case = 2.

SHARE_pfam_aa['Pheno'].loc[cb_SHARE_AA_pheno['PAN_CAN'] == 1.0] = 2
SHARE_pfam_aa[SHARE_pfam_aa['Pheno'] == 2]
SHARE_pfam_aa['Pheno'].loc[SHARE_pfam_aa['Pheno'] == -9] = 1

## Make mother ID equal to that observed in the relations file (Determined using the code in checkrelation.py)

SHARE_pfam_aa['IDoM'].loc[SHARE_pfam_aa['IID'] == 'D377180'] = 'D341589'
SHARE_pfam_aa['IDoM'].loc[SHARE_pfam_aa['IID'] == 'D227051'] = 'D238927'


## Add case vs control information: Case/control phenotypes are normally coded as control = 1, case = 2.

SHARE_pfam_ha['Pheno'].loc[cb_SHARE_HA_pheno['PAN_CAN'] == 1.0] = 2
SHARE_pfam_ha[SHARE_pfam_ha['Pheno'] == 2]
SHARE_pfam_ha['Pheno'].loc[SHARE_pfam_ha['Pheno'] == -9] = 1
SHARE_pfam_ha

## Make mother ID equal to that observed in the relations file (Determined using the code in checkrelation.py)

SHARE_pfam_ha['IDoM'].loc[SHARE_pfam_ha['IID'] == 'D227051'] = 'D238927'
SHARE_pfam_ha['IDoM'].loc[SHARE_pfam_ha['IID'] == 'D377180'] = 'D341589'

SHARE_pfam_aa.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/SHARE_aa.pfam', sep=' ', index=False, header=False)
SHARE_pfam_ha.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/SHARE_ha.pfam', sep=' ', index=False, header=False)


##### Appendix #####
# The code below was used to observe which of the individuals are related

#gwas_rel = pd.read_csv('~/scratch/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files/WHI_GWAS_relatedness_information.csv', sep=",")
#gwas_rel_sorted = gwas_rel.sort_values(by='IID1')
#gwas_rel_sorted_SHARE = gwas_rel_sorted[gwas_rel_sorted['Study1'] == 'SHARe']
#gwas_rel_sorted_SHARE[gwas_rel_sorted_SHARE.duplicated(subset=['IID1'], keep=False)]
#gwas_rel_sorted_SHARE_dup = gwas_rel_sorted_SHARE[gwas_rel_sorted_SHARE.duplicated(subset=['IID1'], keep=False)]

#gwas_rel2 = pd.read_csv('~/scratch/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files/WHI_GWAS_relatedness_information.csv', sep=",")
#gwas_rel2_sorted = gwas_rel2.sort_values(by='IID1')
#gwas_rel2_sorted_SHARE = gwas_rel2_sorted[gwas_rel2_sorted['Study1'] == 'SHARe']
#gwas_rel2_sorted_SHARE[gwas_rel2_sorted_SHARE.duplicated(subset=['IID1'], keep=False)]
#gwas_rel2_sorted_SHARE_dup = gwas_rel2_sorted_SHARE[gwas_rel2_sorted_SHARE.duplicated(subset=['IID1'], keep=False)]