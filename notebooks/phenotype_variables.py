import pandas as pd
import numpy as np
pd.set_option('display.max_columns', 120)

# Load the data from consent group 1

c1_form2 = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c1.f2_rel1.HMB-IRB.txt', sep="\t", comment='#')
c1_form30 = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht000999.v6.p3.c1.f30_rel2.HMB-IRB.txt',sep="\t", comment='#')
c1_form41 = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht001009.v6.p3.c1.f41_rel1.HMB-IRB.txt', sep="\t", comment='#')
c1_form80 = pd.read_csv('/home/user22/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht001019.v6.p3.c1.f80_rel1.HMB-IRB.txt', sep="\t",comment='#')

c1_outc_ct_os = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c1.outc_ct_os_rel4.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_cancer_rel4 = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c1.outc_cancer_rel4.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_death_all_discovered = pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht006220.v1.p3.c1.outc_death_all_discovered_rel1.HMB-IRB.txt', sep="\t", comment='#')




# Load the data from consent group 2

c2_form2 = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c2.f2_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form30 = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht000999.v6.p3.c2.f30_rel2.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form41 = pd.read_csv('~/WHI/consentgroup2/RootStudy/PhenotypeFiles//phs000200.v11.pht001009.v6.p3.c2.f41_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form80 = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht001019.v6.p3.c2.f80_rel1.HMB-IRB-NPU.txt', sep="\t",comment='#')

c2_outc_ct_os = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c2.outc_ct_os_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_cancer_rel4 = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c2.outc_cancer_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_death_all_discovered = pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht006220.v1.p3.c2.outc_death_all_discovered_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')

#Create subject ID dataframes for both consent groups

c1_subject_ID = pd.DataFrame()
c1_subject_ID['dbGaP_Subject_ID'] = c1_form2['dbGaP_Subject_ID']

c2_subject_ID = pd.DataFrame()
c2_subject_ID['dbGaP_Subject_ID'] = c2_form2['dbGaP_Subject_ID']




# Extract and merge the columns needed for consent group 1 

c1_mydf = pd.DataFrame()
c1_mydf['dbGaP_Subject_ID'] = c1_subject_ID['dbGaP_Subject_ID']

c1_mydf = pd.merge(left=c1_mydf, right=c1_form2[['dbGaP_Subject_ID', 'AGE', 'AGER', 'RACE']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form41[['dbGaP_Subject_ID','SPANISH', 'BLACK']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form30[['dbGaP_Subject_ID', 'PANCREAT']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

c1_mydf = pd.merge(left=c1_mydf, right=c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_outc_death_all_discovered[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
 


# Merge consent group 2

c2_mydf = pd.DataFrame()
c2_mydf['dbGaP_Subject_ID'] = c2_subject_ID['dbGaP_Subject_ID']

c2_mydf = pd.merge(left=c2_mydf, right=c2_form2[['dbGaP_Subject_ID', 'AGE', 'AGER', 'RACE']], how='left', left_on=['dbGaP_Subject_ID'], right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form41[['dbGaP_Subject_ID','SPANISH', 'BLACK']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form30[['dbGaP_Subject_ID', 'PANCREAT']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

c2_mydf = pd.merge(left=c2_mydf, right=c2_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_outc_death_all_discovered[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')



# Cancer outcome lines - to be filtered first
#c1_mydf3 = pd.merge(left=c1_subject_ID, right=c1_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE']], how='left', left_on=['dbGaP_Subject_ID'], right_on=['dbGaP_Subject_ID'])
#c1_mydf = pd.merge(left=c1_mydf, right=c1_form80[['dbGaP_Subject_ID', 'F80VY', 'HEIGHTX', 'WEIGHTX', 'BMIX', 'BMICX', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
#c2_mydf3 = pd.merge(left=c2_subject_ID, right=c2_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
#c2_mydf = pd.merge(left=c2_mydf, right=c2_form80[['dbGaP_Subject_ID', 'HEIGHTX', 'WEIGHTX', 'BMIX', 'BMICX', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

# Show that patients have multiple entries of cancer:
# c1_outc_cancer_rel4[c1_outc_cancer_rel4['dbGaP_Subject_ID'] ==  1513699]
#c1_outc_cancer_rel4[c1_outc_cancer_rel4['dbGaP_Subject_ID'] ==  410116]

# Export phenotype variable dataframes to csv file 

c1_mydf.to_csv('/home/user22/analysis/data/phenotype_variables/c1_phenvariables.csv', sep="\t")
c2_mydf.to_csv('/home/user22/analysis/data/phenotype_variables/c2_phenvariables.csv', sep="\t")




test = pd.merge(left=test, right=c1_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH', 'NUMLYMPH']], how='left', left_on=['dbGaP_Subject_ID'], right_on=['dbGaP_Subject_ID'])
