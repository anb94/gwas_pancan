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

# create dfs from the datasets

SHARE_pfam_aa = share_aa_pfam.copy()
SHARE_pfam_ha = share_ha_pfam.copy()
gwas_related = gwas_rel.copy()
share_related = gwas_related[(gwas_related['Study1'] == 'SHARe') & (gwas_related['Study2'] == 'SHARe')]

share_related_sorted_fam = share_related.sort_values(by='IID1')
famdup = share_related_sorted_fam[share_related_sorted_fam.duplicated(subset=['IID1'], keep=False)]
fam_ID = famdup.drop_duplicates(subset=['IID2'])


# Modify pfam file for AA group

mydf_aa = pd.merge(left=SHARE_pfam_aa, right=fam_ID[['IID1', 'IID2', 'relation']], how='left', left_on='IID', right_on='IID2')
mydf_aa['famID'] = mydf_aa['IID1'].fillna(mydf_aa.FID)

## Append the age column to family ID and create a new df, this will allow observation of age. This will aloow us to estimate the relationship between the individuals.

fam_age_aa = pd.merge(left=fam_ID, right=cb_SHARE_AA_pheno[['SAMPLE_ID', 'AGE']], how='left', left_on='IID', right_on='SAMPLE_ID')

## Add case vs control information: Case/control phenotypes are normally coded as control = 1, case = 2.

mydf_aa['Pheno'].loc[cb_SHARE_AA_pheno['PAN_CAN'] == 1.0] = 2
mydf_aa[mydf_aa['Pheno'] == 2]
mydf_aa['Pheno'].loc[mydf_aa['Pheno'] == -9] = 1

## Make mother ID equal to that observed in the relations file (Determined using the code in checkrelation.py)

mydf_aa['IDoM'].loc[mydf_aa['IID'] == 'D377180'] = 'D341589'
mydf_aa['IDoM'].loc[mydf_aa['IID'] == 'D227051'] = 'D238927'

## Copy the df and then make a new df which only contains the columns needed for pfam

newdf_aa = mydf_aa.copy()
aa_pfam = newdf_aa[['famID', 'IID', 'IDoF', 'IDoM', 'SEX', 'Pheno']]


# Modify pfam file for HA group

mydf_ha = pd.merge(left=SHARE_pfam_ha, right=fam_ID[['IID1', 'IID2', 'relation']], how='left', left_on='IID', right_on='IID2')
mydf_ha['famID'] = mydf_ha['IID1'].fillna(mydf_ha.FID)

fam_age_ha = pd.merge(left=fam_ID, right=cb_SHARE_HA_pheno[['SAMPLE_ID', 'AGE']], how='left', left_on='IID2', right_on='SAMPLE_ID')

## Add case vs control information: Case/control phenotypes are normally coded as control = 1, case = 2.

mydf_ha['Pheno'].loc[cb_SHARE_HA_pheno['PAN_CAN'] == 1.0] = 2
mydf_ha[mydf_ha['Pheno'] == 2]
mydf_ha['Pheno'].loc[mydf_ha['Pheno'] == -9] = 1
mydf_ha

## Make mother ID equal to that observed in the relations file (Determined using the code in checkrelation.py)

mydf_ha['IDoM'].loc[mydf_ha['IID'] == 'D227051'] = 'D238927'
mydf_ha['IDoM'].loc[mydf_ha['IID'] == 'D377180'] = 'D341589'

## Copy the df and then make a new df which only contains the columns needed for pfam

newdf_ha = mydf_ha.copy()
ha_pfam = newdf_ha[['famID', 'IID', 'IDoF', 'IDoM', 'SEX', 'Pheno']]

# Export the files as pfam

aa_pfam.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/SHARE_aa.pfam', sep='\t', index=False, header=False)
ha_pfam.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/SHARE_ha.pfam', sep='\t', index=False, header=False)
