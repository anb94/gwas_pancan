import pandas as pd
import numpy as np
pd.set_option('display.max_columns', 120)




# -------------------- Load the data from consent groups -------------------- #


# Consent Group 1


c1_form2 = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c1.f2_rel1.HMB-IRB.txt', sep="\t", comment='#')
c1_form30 = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht000999.v6.p3.c1.f30_rel2.HMB-IRB.txt',sep="\t", comment='#')
c1_form41 = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht001009.v6.p3.c1.f41_rel1.HMB-IRB.txt', sep="\t", comment='#')
c1_form80 = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht001019.v6.p3.c1.f80_rel1.HMB-IRB.txt', sep="\t",comment='#')

c1_outc_ct_os = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c1.outc_ct_os_rel4.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_cancer_rel4 = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c1.outc_cancer_rel4.HMB-IRB.txt', sep="\t", comment='#')

c1_WHI_Sample = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht001032.v8.p3.WHI_Sample.MULTI.txt', sep="\t", comment='#')
c1_WHI_Subject = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht000982.v8.p3.WHI_Subject.MULTI.txt', sep="\t", comment='#')
c1_746_pheno = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/PhenotypeFiles/phs000746.v2.pht004719.v1.p3.c1.WHI_Imputation_Sample_Attributes.HMB-IRB.txt', sep="\t", comment='#')



# Consent Group 2


c2_form2 = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c2.f2_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form30 = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht000999.v6.p3.c2.f30_rel2.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form41 = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht001009.v6.p3.c2.f41_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_form80 = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht001019.v6.p3.c2.f80_rel1.HMB-IRB-NPU.txt', sep="\t",comment='#')

c2_outc_ct_os = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c2.outc_ct_os_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_cancer_rel4 = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c2.outc_cancer_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')


c2_WHI_Sample = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht001032.v8.p3.WHI_Sample.MULTI.txt', sep="\t", comment='#')
c2_WHI_Subject = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c2.HMB-IRB-NPU/PhenotypeFiles/phs000200.v11.pht000982.v8.p3.WHI_Subject.MULTI.txt', sep="\t", comment='#')
c2_746_pheno = pd.read_csv('~/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/PhenotypeFiles/phs000746.v2.pht004719.v1.p3.c2.WHI_Imputation_Sample_Attributes.HMB-IRB-NPU.txt', sep="\t", comment='#')






# --------------------- Pheno Data extraction and preparation  --------------------- #



# Extract Pancreatic Cancer patients


c1_pancan_occ = c1_outc_cancer_rel4[c1_outc_cancer_rel4['PANCREAS'] == 1.0]
c2_pancan_occ = c2_outc_cancer_rel4[c2_outc_cancer_rel4['PANCREAS'] == 1.0]

# Extract BMI and Wasit Hip Ratio from Form80 and produce a mean


c1_form80_BMI=c1_form80.groupby(by='dbGaP_Subject_ID')['BMIX'].mean()
c1_form80_BMI=pd.DataFrame(c1_form80_BMI)
c1_form80_BMI.reset_index(inplace=True)

c1_form80_WHRX=c1_form80.groupby(by='dbGaP_Subject_ID')['WHRX'].mean()
c1_form80_WHRX=pd.DataFrame(c1_form80_WHRX)
c1_form80_WHRX.reset_index(inplace=True)


c2_form80_BMI=c2_form80.groupby(by='dbGaP_Subject_ID')['BMIX'].mean()
c2_form80_BMI=pd.DataFrame(c2_form80_BMI)
c2_form80_BMI.reset_index(inplace=True)

c2_form80_WHRX=c2_form80.groupby(by='dbGaP_Subject_ID')['WHRX'].mean()
c2_form80_WHRX=pd.DataFrame(c2_form80_WHRX)
c2_form80_WHRX.reset_index(inplace=True)



# Extract samples from imputed and harmonized data
## Consent group 1

c1_WHI_Sample_filt_746 = c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]
c1_WHI_Sample_filt_746_info = c1_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID', 'SAMPLE_ID', 'SUBJID']]
c1_WHI_Sample_filt_746_final = c1_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID']]

## Consent Group 2

c2_WHI_Sample_filt_746 = c2_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]
c2_WHI_Sample_filt_746_info = c2_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID', 'SAMPLE_ID', 'SUBJID']]
c2_WHI_Sample_filt_746_final = c2_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID']]


# Extract Columns on this data set so that you can filter based on study (i.e. share ha or aa)
## Consent Group 1

c1_746_pheno_info = c1_746_pheno[['dbGaP_Sample_ID', 'SAMPLE_ID', 'SAMPLE_ORIGIN']]

c1_746_pheno_info_SHARE = c1_746_pheno_info[c1_746_pheno_info.SAMPLE_ORIGIN.str.match('SHARE')]
c1_746_pheno_info_SHARE_HA = c1_746_pheno_info_SHARE[c1_746_pheno_info_SHARE.SAMPLE_ORIGIN.str.match('SHARE-HA')]
c1_746_pheno_info_SHARE_AA = c1_746_pheno_info_SHARE[c1_746_pheno_info_SHARE.SAMPLE_ORIGIN.str.match('SHARE-AA')]

##c2

c2_746_pheno_info = c2_746_pheno[['dbGaP_Sample_ID', 'SAMPLE_ID', 'SAMPLE_ORIGIN']]

c2_746_pheno_info_SHARE = c2_746_pheno_info[c1_746_pheno_info.SAMPLE_ORIGIN.str.match('SHARE')]
c2_746_pheno_info_SHARE_HA = c2_746_pheno_info_SHARE[c2_746_pheno_info_SHARE.SAMPLE_ORIGIN.str.match('SHARE-HA')]
c2_746_pheno_info_SHARE_AA = c2_746_pheno_info_SHARE[c2_746_pheno_info_SHARE.SAMPLE_ORIGIN.str.match('SHARE-AA')]

# Merge filtered WHI Sample and 746 pheno
##c1

c1_SHARE = pd.merge(left=c1_746_pheno_info_SHARE, right=c1_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c1_SHARE_AA = pd.merge(left=c1_746_pheno_info_SHARE_AA, right=c1_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c1_SHARE_HA = pd.merge(left=c1_746_pheno_info_SHARE_HA, right=c1_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')


##c2

c2_SHARE = pd.merge(left=c2_746_pheno_info_SHARE, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c2_SHARE_AA = pd.merge(left=c2_746_pheno_info_SHARE_AA, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c2_SHARE_HA = pd.merge(left=c2_746_pheno_info_SHARE_HA, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')





# -------------------- Create Phenotype dataframes for both consent groups ------------------- #

# Create empty DF with \subject ID column based on form 2

c1_subject_ID = pd.DataFrame()
c1_subject_ID['dbGaP_Subject_ID'] = c1_form2['dbGaP_Subject_ID']

c2_subject_ID = pd.DataFrame()
c2_subject_ID['dbGaP_Subject_ID'] = c2_form2['dbGaP_Subject_ID']


# Extract and merge the columns needed for consent group 1 

c1_mydf = pd.DataFrame()
c1_mydf['dbGaP_Subject_ID'] = c1_subject_ID['dbGaP_Subject_ID']

c1_mydf = pd.merge(left=c1_mydf, right=c1_form2[['dbGaP_Subject_ID', 'AGE', 'RACE', 'DIAB']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form41[['dbGaP_Subject_ID','SPANISH', 'BLACK']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form30[['dbGaP_Subject_ID', 'PANCREAT']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREASDY', 'DEATH', 'DEATHCAUSE','DEATHDY', 'ENDWHIDY', 'ENDFOLLOWDY']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_pancan_occ[['dbGaP_Subject_ID', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form80_BMI, how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_mydf, right=c1_form80_WHRX[['dbGaP_Subject_ID', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = c1_mydf.rename(columns={"RACE": "RACE_GROUP", "DIAB": "HISTORY_DIABETES", "SPANISH": "SPAN_RACE", "PANCREAT": "PANCREATITIS", "PANCREAS": "PAN_CAN", "PANCREASDY": "AGE_DIAGNOSED", "DEATH": "DECEASED", "ENDFOLLOWDY": "AGE_END_FOLLOW", "ICDCODE": "PAN_CAN_LOCATION", "BEHAVIOR": "TUMOUR_BEHAVIOUR", "MRPHHISTB": "TUMOUR_MORPHOLOGY", "GRADING": "TUMOUR_GRADE", "SIZE": "TUMOUR_SIZE", "STAGE": "TUMOUR_STAGE", "DEATHDY": "AGE_DEATH"})
c1_mydf = c1_mydf.fillna(0)

# Extract and merge the columns needed for consent group 2

c2_mydf = pd.DataFrame()
c2_mydf['dbGaP_Subject_ID'] = c2_subject_ID['dbGaP_Subject_ID']

c2_mydf = pd.merge(left=c2_mydf, right=c2_form2[['dbGaP_Subject_ID', 'AGE', 'RACE', 'DIAB']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form41[['dbGaP_Subject_ID','SPANISH', 'BLACK']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form30[['dbGaP_Subject_ID', 'PANCREAT']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_outc_ct_os[['dbGaP_Subject_ID', 'PANCREASDY', 'DEATH', 'DEATHCAUSE','DEATHDY', 'ENDWHIDY', 'ENDFOLLOWDY']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_pancan_occ[['dbGaP_Subject_ID', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form80_BMI[['dbGaP_Subject_ID', 'BMIX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

c2_mydf = pd.merge(left=c2_mydf, right=c2_form80_WHRX[['dbGaP_Subject_ID', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = c2_mydf.rename(columns={"AGER": "AGE_GROUP", "RACE": "RACE_GROUP", "DIAB": "HISTORY_DIABETES", "SPANISH": "SPAN_RACE", "PANCREAT": "PANCREATITIS", "PANCREAS": "PAN_CAN", "PANCREASDY": "AGE_DIAGNOSED", "DEATH": "DECEASED", "ENDFOLLOWDY": "AGE_END_FOLLOW", "ICDCODE": "PAN_CAN_LOCATION", "BEHAVIOR": "TUMOUR_BEHAVIOUR", "MRPHHISTB": "TUMOUR_MORPHOLOGY", "GRADING": "TUMOUR_GRADE", "SIZE": "TUMOUR_SIZE", "STAGE": "TUMOUR_STAGE"})
c2_mydf = c2_mydf.fillna(0)



# -------------------- DATA CLEANING ------------------- #

###### NOT FINISHED COPYING OVER #######
# Convert 

c1_mydf.loc[(c1_mydf.PAN_CAN == "1.0"),'PAN_CAN']="1"
c1_mydf.loc[(c1_mydf.PAN_CAN != "1"),'PAN_CAN']="0"

c1_mydf.loc[(c1_mydf.PANCREATITIS == "1.0"),'PANCREATITIS']=1
c1_mydf.loc[(c1_mydf.PANCREATITIS != "1"),'PANCREATITIS']=0



c1_mydf.AGE_END_FOLLOW = c1_mydf.AGE+(c1_mydf.AGE_END_FOLLOW / 365)
c1_mydf.AGE_END_FOLLOW = c1_mydf.AGE_END_FOLLOW.round(0)

c1_mydf.AGE_DIAGNOSED = c1_mydf.AGE + (c1_mydf.AGE_DIAGNOSED / 365)
c1_mydf.AGE_DIAGNOSED = c1_mydf.AGE_DIAGNOSED.round(0)

c1_mydf.AGE_DEATH = c1_mydf.AGE+(c1_mydf.AGE_DEATH / 365)



c1_mydf = c1_mydf.astype({"RACE_GROUP": int,
                            "RACE_GROUP": int,
                            "HISTORY_DIABETES": int,      
                            "SPAN_RACE": int,
                            "BLACK": int,
                            "PANCREATITIS": int,
                            "AGE_DIAGNOSED": int,
                            "DECEASED": int,
                            "DEATHCAUSE": int,
                            "DEATHDY": int,
                            "ENDWHIDY": int,
                            "AGE_END_FOLLOW": int,
                            "PAN_CAN": int,
                          })





c1_mydf = c1_mydf.astype({"RACE_GROUP": float64,
                            "PAN_CAN": float64,
                            "HISTORY_DIABETES": float64,
                            "SPAN_RACE": float64,
                            "BLACK": float64,
                            "PANCREATITIS": float64,
                            "AGE_DIAGNOSED": float64,
                            "": float64,
                            "": int,
                            "": int,
                            "": int,
                          })

c1_mydf.PAN_CAN_MONTHS_SURVIVED = c1_mydf.PAN_CAN_MONTHS_SURVIVED.astype(float64)

c2_mydf.PAN_CAN_MONTHS_SURVIVED = c2_mydf.PAN_CAN_MONTHS_SURVIVED.astype(float64)



# -------------------- Extract patients that are in SHARE ------------------- #

c1_SHARE_AA_pheno = pd.merge(left=c1_SHARE_AA, right=c1_mydf, how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_SHARE_HA_pheno = pd.merge(left=c1_SHARE_HA, right=c1_mydf, how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')


c2_SHARE_AA_pheno = pd.merge(left=c2_SHARE_AA, right=c2_mydf, how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_SHARE_HA_pheno = pd.merge(left=c2_SHARE_HA, right=c2_mydf, how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

