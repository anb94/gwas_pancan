import pandas as pd
pd.set_option('display.max_columns', 120)

# The code below is used to observe which of the individuals are related

# Load in the file from dbgap which inlcudes relatedness information.

gwas_rel = pd.read_csv('~/scratch/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/WHI_DCC_files/WHI_GWAS_relatedness_information.csv', sep=",")

# Sort the file by IID1 (which is family ID in this file)

gwas_rel_sorted = gwas_rel.sort_values(by='IID1')

# Extract the individuals in the study of interest

gwas_rel_sorted_SHARE = gwas_rel_sorted[gwas_rel_sorted['Study1'] == 'SHARe']

# Drop duplicates

gwas_rel_sorted_SHARE_drop_dup = gwas_rel_sorted_SHARE[gwas_rel_sorted_SHARE.duplicated(subset=['IID1'], keep=False)]

# View the file

gwas_rel_sorted_SHARE_drop_dup


