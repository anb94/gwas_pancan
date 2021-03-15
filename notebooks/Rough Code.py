# Rough Code
#c1_mydf = pd.merge(left=c1_mydf, right=c1_outc_death_all_discovered[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
#c2_mydf = pd.merge(left=c2_mydf, right=c2_outc_death_all_discovered[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')


# Cancer outcome lines - to be filtered first
c1_mydf = pd.merge(left=c1_subject_ID, right=c1_outc_cancer_rel4[['dbGaP_Subject_ID', 'PANCREAS', 'ICDCODE', 'DIAGSTAT', 'BEHAVIOR', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE']], how='left', left_on=['dbGaP_Subject_ID'], right_on=['dbGaP_Subject_ID'])
c1_mydf = pd.merge(left=c1_mydf, right=c1_form80[['dbGaP_Subject_ID', 'F80VY', 'HEIGHTX', 'WEIGHTX', 'BMIX', 'BMICX', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

c2_mydf = pd.merge(left=c2_subject_ID, right=c2_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH', 'NUMLYMPH']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c2_mydf = pd.merge(left=c2_mydf, right=c2_form80[['dbGaP_Subject_ID', 'HEIGHTX', 'WEIGHTX', 'BMIX', 'BMICX', 'WHRX']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')



#c2_mydf3 = pd.merge(left=c2_subject_ID, right=c2_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH', 'NUMLYMPH']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')



"""
c1_form2[(c1_form2[] == )
titanic[titanic["Age"] > 35]
c1_form2[c1_form2['dbGaP_Subject_ID'] == 'D16767']

test = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht001032.v8.p3.WHI_Sample.MULTI.txt', sep="\t", comment='#')
test[test['SAMPLE_ID'] == 'D16767']

c1_form2[c1_form2['SAMPLE_ID'] == 'D16767']
"""
c1_mydf[c1_mydf['PAN_CAN'] == '1']

c1_746_pheno[c1_746_pheno['SAMPLE_ID'] == 'D16767']

c1_outc_cancer_rel4[c1_outc_cancer_rel4['PANCREAS'] == "1.0"]
c1_mydf[c1_mydf['PANCREAS_x'] == "1"]

c1_outc_cancer_rel4 = c1_outc_cancer_rel4.astype({"PANCREAS": 'str'})


c1_mydf[c1_mydf['PAN_CAN_DEATH'] == "37.0"]


.loc[(c1_mydf.PAN_CAN_DEATH != 37.0),'PAN_CAN_DEATH']="0"
# ------------------------------------ DUPLICATED FILES ---------------------------------------------------------------
df=pd.DataFrame({"Song ID":[0,0,1,3,1,4,5],'ArtistID':[12,13,34,1,21,43,22]})
print df[df.duplicated(subset=['Song ID'],keep=False)]

c1_WHI_Sample[c1_WHI_Sample.duplicated(subset=['dbGaP_Subject_ID'], keep=False)]

c1_SHARE_Samples[c1_SHARE_Samples.duplicated(subset=['dbGaP_Subject_ID'], keep=False)]


c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000386')]
test1 = c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]

c1_746_pheno[c1_746_pheno.duplicated(subset=['SAMPLE_ID'], keep=False)]



c1_SHARE_Samples['dbGaP_Subject_ID'].value_counts()


c1_WHI_Sample['dbGaP_Sample_ID'].value_counts()

c1_SHARE_AA['dbGaP_Subject_ID'].value_counts()


test=c2_746_pheno_info_SHARE_AA['dbGaP_Sample_ID'].value_counts()
test.value_counts()


c1_pancan_occ[c1_pancan_occ.duplicated(subset=['dbGaP_Subject_ID'], keep=False)]

c2_outc_cancer_rel4 = c2_outc_cancer_rel4.astype({"PANCREAS": 'str'})
c2_pancan_occ = c2_outc_cancer_rel4[c2_outc_cancer_rel4['PANCREAS'] == "1.0"]


# -----------------------------------------------------------------------------------------------------------------------



c1_WHI_Sample[c1_WHI_Sample['STUDY'] == "phs000386.v7.p3"] 

c1_WHI_Sample[c1_WHI_Sample['dbGaP_Sample_ID'] == "165148"] 




c1_WHI_Sample[ == ]


dfObj[(dfObj['Sale'] > 30) & (dfObj['Sale'] < 33) ]
c1_mydf[(c1_mydf['PANCREAS_x'] != 1) & (c1_mydf['PANCREAS_y'] == "1.0")]
c1_mydf[(c1_mydf['DEATHCAUSE'] == "nan") & (c1_mydf['DEATH'] != 0)]

c2_mydf[(c2_mydf['DECEASED'] != 1) & (c2_mydf['PANCREAS_y'].isnull)]



c1_mydf[c1_mydf['DEATHCAUSE' != "1.0"]]


c1_mydf.loc[(c1_mydf.DEATHCAUSE == 'nan'),'DEATHCAUSE']='None'

c1_mydf['AGE_END_FOLLOW'] = c1_mydf['AGE_END_FOLLOW'].fillna(0)

c1_mydf.DEATHCAUSE.fillna(0)




pd.to_numeric(c1_mydf['AGE_END_FOLLOW'])

c1_mydf['AGE_END_FOLLOW'].apply(np.ceil)

c1_mydf[(c1_mydf.PAN_CAN == "1.0") & c1_mydf.AGE_END_FOLLOW < 1]



1516748

df_temp=df.grouby(by='dbGaP_Subject_ID')['WEIGHTX'].mean()

c1_form80_BMI=c1_form80.groupby(by='dbGaP_Subject_ID')['BMIX'].mean()
c1_form80_BMI=pd.DataFrame(c1_form80_BMI)
c1_form80_BMI.reset_index(inplace=True)
c1_mydf=pd.merge(left=c1_mydf,right=c1_form80_BMI[['dbGaP_Subject_ID','BMIX']],how='left',left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')



#### ----------------------- PHENOGENO VARIABLE ----------
c1_WHI_Sample[c1_WHI_Sample['SAMPLE_ID'] == 'D16767']


c1_WHI_Sample = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/pheno/rootstudy/RootStudyConsentSet_phs000200.WHI.v11.p3.c1.HMB-IRB/PhenotypeFiles/phs000200.v11.pht001032.v8.p3.WHI_Sample.MULTI.txt', sep="\t", comment='#')
c1_746_pheno = pd.read_csv('~/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/PhenotypeFiles/phs000746.v2.pht004719.v1.p3.c1.WHI_Imputation_Sample_Attributes.HMB-IRB.txt', sep="\t", comment='#')

# Exract SAMPLE_ID
c1_sample = pd.merge(left=c1_WHI_Sample[['dbGaP_Subject_ID', 'dbGaP_Sample_ID']], right=c1_746_pheno[['dbGaP_Sample_ID', 'SAMPLE_ID']], how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')

c1_sample = pd.merge(left=c1_746_pheno[['SAMPLE_ID']], right=c1_WHI_Sample_filt[['SAMPLE_ID', 'dbGaP_Subject_ID']], how='left', left_on='SAMPLE_ID', right_on='SAMPLE_ID')





c1_WHI_Sample['dbGaP_Sample_ID'].value_counts()
c1_WHI_Sample['SAMPLE_ID'].value_counts()

c1_746_pheno['dbGaP_Sample_ID'].value_counts()
c1_sample['dbGaP_Sample_ID'].value_counts()
c1_WHI_Sample_filt['dbGaP_Sample_ID'].value_counts()



Dftemp.groupby(by dbgapid)[sample id]. count
c1_WHI_Sample.groupby(by='SAMPLE_ID')['dbGaP_Subject_ID'].count()
c1_WHI_Sample_filt.groupby(by='dbGaP_Subject_ID')['SAMPLE_ID'].count()

c1_WHI_Sample.groupby(by='dbGaP_Subject_ID')['SAMPLE_ID'].count()


c1_sample.groupby(by='dbGaP_Sample_ID')['dbGaP_Subject_ID'].count()


c1_746_pheno.groupby(by='SAMPLE_ID')['dbGaP_Subject_ID'].count()

c1_WHI_Sample_filt = c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]


c1_mydf.groupby(by='TUMOUR_MORPHOLOGY')['dbGaP_Subject_ID'].count()







c1t = c1_[c1_WHI_Sample.SAMPLE_ORIGIN.str.match('SHARE')]





c1_746_pheno[c1_746_pheno['SAMPLE_ID'] == 'D16767']

c1_WHI_Sample[c1_WHI_Sample['SAMPLE_ID'] == '700005']

c1_WHI_Sample_filt[c1_WHI_Sample_filt['SAMPLE_ID'] == '700005']

d30[d30['SampleID'] == 'D16767']


c1_WHI_Sample_filt.groupby(by='dbGaP_Subject_ID')['SAMPLE_ID'].count()
d30.groupby(by='SubjectID')['SampleID'].count()

d30 = pd.read_csv('/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_Imputation.sample-info.MULTI/phg000592.v1_release_manifest.txt', sep="\t", comment='#')


c1_WHI_Sample_filt = c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]


d30_filt_aa = d30[d30.Dataset.str.match('WHI_SHARE_aa')]
d30_filt_aa.groupby(by='SubjectID')['SampleID'].count()








garnet = d30[d30.Dataset.str.match('WHI_GARNET')]







len(c1_WHI_Sample_filt['dbGaP_Subject_ID'].tolist())
len(c1_WHI_Sample_filt['dbGaP_Subject_ID'].tolist())

len(list(set(df['col'].tolist()))) 
list(set([1, 2, 3, 4, 4])) 


id_list = df['col'].tolist()
len(id_list) 
len(list(set(id_list))) 



id_list = c1_WHI_Sample_filt['dbGaP_Subject_ID'].tolist()
len(id_list)
len(list(set(id_list))) 



c1_WHI_Sample_filt[['dbGaP_Subject_ID', 'SAMPLE_ID']]



# FLOAT TO STRING
#c1_outc_cancer_rel4 = c1_outc_cancer_rel4.astype({"PANCREAS": 'str'})
#c2_outc_cancer_rel4 = c2_outc_cancer_rel4.astype({"PANCREAS": 'str'})





c1_mydf[c1_mydf['PAN_CAN_DEATH'] != "0"]


c1_mydf[c1_mydf['PAN_CAN_MONTHS_SURVIVED'] == "0"]




# Round Columns

c1_mydf.AGE_DIAGNOSED = c1_mydf.AGE_DIAGNOSED.round(0)
c2_mydf.AGE_DIAGNOSED = c2_mydf.AGE_DIAGNOSED.round(0)
c2_mydf.AGE_DEATH = c2_mydf.AGE_DEATH.round(0)




temp['test'] = np.where((c1_mydf.PAN_CAN_LOCATION < 30) & (c1_mydf.PAN_CAN_LOCATION > 19.9), np.NaN, c1_mydf.PAN_CAN_LOCATION)


temp[temp['test'] == 25]

c1_mydf[c1_mydf['PAN_CAN_LOCATION'] == 1.0]



.apply(lambda x: x == 0.00 if x < 25 or 25.9 > x)


# ===========================================
#Create a temporary df containing only those diagnosed with pancreatic cancer so that the number of months survived with pancreatic cancer can be calculated
c1_tempdf = c1_mydf[c1_mydf['PAN_CAN'] == 1.0]
c1_tempdf['PAN_CAN_MONTHS_SURVIVED'] = (c1_tempdf.AGE_DEATH - c1_tempdf.AGE_DIAGNOSED) * 12

c2_tempdf = c2_mydf[c2_mydf['PAN_CAN'] == 1.0]
c2_tempdf['PAN_CAN_MONTHS_SURVIVED'] = (c2_tempdf.AGE_DEATH - c2_tempdf.AGE_DIAGNOSED) * 12


#Merge on months survived with pancreatic cancer to main dfs
c1_mydf = pd.merge(left=c1_mydf, right=c1_tempdf[['dbGaP_Subject_ID', 'PAN_CAN_MONTHS_SURVIVED']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')


c2_mydf = pd.merge(left=c2_mydf, right=c2_tempdf[['dbGaP_Subject_ID', 'PAN_CAN_MONTHS_SURVIVED']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')



