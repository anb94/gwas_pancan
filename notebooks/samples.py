# Extract samples from imputed and harmonized data
##c1

c1_WHI_Sample_filt_746 = c1_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]
c1_WHI_Sample_filt_746_info = c1_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID', 'SAMPLE_ID', 'SUBJID']]
c1_WHI_Sample_filt_746_final = c1_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID']]

##c2

c2_WHI_Sample_filt_746 = c2_WHI_Sample[c1_WHI_Sample.STUDY.str.match('phs000746')]
c2_WHI_Sample_filt_746_info = c2_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID', 'SAMPLE_ID', 'SUBJID']]
c2_WHI_Sample_filt_746_final = c2_WHI_Sample_filt_746[['dbGaP_Subject_ID', 'dbGaP_Sample_ID']]


# Extract Columns on this data set so that you can filter based on study (i.e. share ha or aa)
##c1

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
c1_SHARE_HA = pd.merge(left=c1_746_pheno_info_SHARE_HA, right=c1_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c1_SHARE_AA = pd.merge(left=c1_746_pheno_info_SHARE_AA, right=c1_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')

##c2

c2_SHARE = pd.merge(left=c2_746_pheno_info_SHARE, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c2_SHARE_HA = pd.merge(left=c2_746_pheno_info_SHARE_HA, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')
c2_SHARE_AA = pd.merge(left=c2_746_pheno_info_SHARE_AA, right=c2_WHI_Sample_filt_746_final, how='left', left_on='dbGaP_Sample_ID', right_on='dbGaP_Sample_ID')














#------------------------------------------- old




c1_sample_IDs = pd.merge(left=c1_746_pheno[['SAMPLE_ID']], right=c1_WHI_Sample_filt_746[['SAMPLE_ID', 'dbGaP_Subject_ID']], how='left', left_on='SAMPLE_ID', right_on='SAMPLE_ID')


c1_746_pheno_info_SHARE_HA.groupby(by='dbGaP_Sample_ID')['SAMPLE_ID'].count()
c1_746_pheno_info_SHARE_HA.groupby(by='SAMPLE_ID')['dbGaP_Sample_ID'].count()
c1_WHI_Sample_filt_746_info.groupby(by='dbGaP_Sample_ID')['SAMPLE_ID'].count()
c1_WHI_Sample_filt_746_info.groupby(by='SAMPLE_ID')['dbGaP_Sample_ID'].count()



c1_SHARE_HA.groupby(by='dbGaP_Sample_ID')['SAMPLE_ID'].count()

c1_SHARE_HA[c1_SHARE_HA.duplicated(subset='dbGaP_Subject_ID')]














c1_mydf.loc[(c1_mydf.PAN_CAN == "1.0"),'PAN_CAN']="1"
c1_mydf.loc[(c1_mydf.PAN_CAN != "1"),'PAN_CAN']="0"






c1_SHARE_HA.loc[(c1_SHARE_HA.)]















