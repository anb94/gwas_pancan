import pandas as pd
import numpy as np

SHARE_aa_pos = pd.read_csv("/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHARE_aa.pos", sep="\t", comment='#')
SHARE_ha_pos = pd.read_csv("/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/SHARE_ha.pos", sep="\t", comment='#')
snp_annot_grch37_nodups = pd.read_csv("/home/anbennett2/scratch/snp_annot_grch37_nodups.txt", sep="\t", comment='#')
snp_annot_grch37_nodups.columns = ['chr', 'pos', 'rsid', 'al1', 'al2' 'CHR_POS']

SHARE_aa_rsid = pd.merge(left=SHARE_aa_pos, right=snp_annot_grch37_nodups[['CHR_POS', 'rsid']], how='left', left_on='CHR_POS')
SHARE_ha_rsid = pd.merge(left=SHARE_ha_pos, right=snp_annot_grch37_nodups[['CHR_POS', 'rsid']], how='left', left_on='CHR_POS')

SHARE_aa_rsid.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHARE_aa_rsid.txt', sep='\t', index=False)
SHARE_ha_rsid.to_csv('/home/anbennett2/scratch/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/SHARE_ha_rsid.txt', sep='\t', index=False)