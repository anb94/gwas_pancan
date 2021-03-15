
# TRANSFORM consent group 1



c1_mydf.loc[(c1_mydf.PAN_CAN == "1.0"),'PAN_CAN']="1"
c1_mydf.loc[(c1_mydf.PAN_CAN != "1"),'PAN_CAN']="0"

c1_mydf.loc[(c1_mydf.PANCREATITIS == "1.0"),'PANCREATITIS']=1
c1_mydf.loc[(c1_mydf.PANCREATITIS != "YES"),'PANCREATITIS']=0



c1_mydf.AGE_END_FOLLOW = c1_mydf.AGE+(c1_mydf.AGE_END_FOLLOW / 365)
c1_mydf.AGE_END_FOLLOW = c1_mydf.AGE_END_FOLLOW.round(0)

c1_mydf.AGE_DIAGNOSED = c1_mydf.AGE + (c1_mydf.AGE_DIAGNOSED / 365)
c1_mydf.AGE_DIAGNOSED = c1_mydf.AGE_DIAGNOSED.round(0)


c1_mydf = c1_mydf.astype({"RACE_GROUP": int,
                            "PAN_CAN": int,
                            "HISTORY_DIABETES": int,
                            "SPAN_RACE": int,
                            "BLACK": int,
                            "PANCREATITIS": int,
                            "AGE_DIAGNOSED": int,
                            "": int,
                            "": int,
                            "": int,
                            "": int,
                          })

c1_mydf.DEATHCAUSE = c1_mydf.DEATHCAUSE.fillna(0)
c1_mydf.DEATHCAUSE = c1_mydf.TUMOUR_BEHAVIOUR .fillna(0)




# TRANSFORM consent group 2

c2_mydf = c2_mydf.rename(columns={"AGER": "AGE_GROUP", "RACE": "RACE_GROUP", "DIAB": "HISTORY_DIABETES", "SPANISH": "SPAN_RACE", "PANCREAT": "PANCREATITIS", "PANCREAS": "PAN_CAN", "PANCREASDY": "AGE_DIAGNOSED", "DEATH": "DECEASED", "ENDFOLLOWDY": "AGE_END_FOLLOW", "ICDCODE": "PAN_CAN_LOCATION", "BEHAVIOR": "TUMOUR_BEHAVIOUR", "MRPHHISTB": "TUMOUR_MORPHOLOGY", "GRADING": "TUMOUR_GRADE", "SIZE": "TUMOUR_SIZE", "STAGE": "TUMOUR_STAGE"})

c2_mydf.loc[(c2_mydf.PAN_CAN == "1.0"),'PAN_CAN']="CASE"
c2_mydf.loc[(c2_mydf.PAN_CAN != "CASE"),'PAN_CAN']="CONTROL"

c2_mydf.loc[(c2_mydf.PANCREATITIS == "1.0"),'PANCREATITIS']=1
c2_mydf.loc[(c2_mydf.PANCREATITIS != "YES"),'PANCREATITIS']=0



c2_mydf.AGE_END_FOLLOW = c2_mydf.AGE+(c2_mydf.AGE_END_FOLLOW / 365)
c2_mydf.AGE_END_FOLLOW = c2_mydf.AGE_END_FOLLOW.round(0)

c2_mydf.AGE_DIAGNOSED = c2_mydf.AGE + (c2_mydf.AGE_DIAGNOSED / 365)
c2_mydf.AGE_DIAGNOSED = c2_mydf.AGE_DIAGNOSED.round(0)


c2_mydf = c2_mydf.astype({"DEATHCAUSE": 'str'})

c2_mydf.DEATHCAUSE = c2_mydf.DEATHCAUSE.fillna(0)
c2_mydf.DEATHCAUSE = c2_mydf.TUMOUR_BEHAVIOUR .fillna(0)


c1_outc_cancer_rel4.PANCREAS = c1_outc_cancer_rel4.PANCREAS.fillna(0)


# -------------------- Merge Phenotype dataframes for both consent groups ------------------- #





# Export phenotype variable dataframes to csv file 

c1_mydf.to_csv('/home/anbennett2/analysis/results/gwas_pancan/pheno/c1_phenvariables.csv', sep='\t')
c2_mydf.to_csv('/home/anbennett2/analysis/results/gwas_pancan/pheno/c2_phenvariables.csv', sep='\t')



tempdf = c1_mydf[c1_mydf['DEATHCAUSE'] == 37.0]

c1_aa_pc1 = c1_SHARE_AA_pheno[c1_SHARE_AA_pheno['PAN_CAN'] == 1]
c1_ha_pc1 = c1_SHARE_HA_pheno[c1_SHARE_HA_pheno['PAN_CAN'] == 1]

c2_aa_pc1 = c2_SHARE_AA_pheno[c2_SHARE_AA_pheno['PAN_CAN'] == 1]
c2_ha_pc1 = c2_SHARE_HA_pheno[c2_SHARE_HA_pheno['PAN_CAN'] == 1]



c1_days_to_diagnosis[c1_days_to_diagnosis



Figure 2
