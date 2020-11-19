print(c1_mydf3[c1_mydf3.duplicated()].drop_duplicates())

c1_mydf3.duplicated()


c1_outc_cancer_rel4.duplicated(subset='dbGaP_Subject_ID', keep='first')

print('Number of Rows in dataframe which contain True in any column : ', c1_outc_cancer_rel4)


ids = c1_outc_cancer_rel4['dbGaP_Subject_ID']

c1_temp1_form2 = pd.DataFrame()
c1_temp2_ct_os = pd.DataFrame()
c1_temp3_can = pd.DataFrame()
c1_temp4_alld = pd.DataFrame()

c1_temp1_form2[['dbGaP_Subject_ID', 'AGE', 'AGER', 'RACE']] = c1_form2[['dbGaP_Subject_ID', 'AGE', 'AGER', 'RACE']]
c1_temp2_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']] = c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']]
c1_temp3_can[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH', 'NUMLYMPH']] = c1_outc_cancer_rel4[['dbGaP_Subject_ID', 'ASCSOURCE', 'PANCREAS', 'ICDCODE', 'BEHAVIOR', 'RPRTSRC', 'DIAGSTAT', 'LATERAL', 'MRPHHISTB', 'GRADING', 'SIZE', 'STAGE', 'INVOLVE', 'POSLYMPH', 'NUMLYMPH']]
c1_temp4_alld[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']] = c1_outc_death_all_discovered[['dbGaP_Subject_ID', 'DEATHALL', 'DEATHALLDY', 'DEATHALLSRC', 'DEATHALLCAUSE', 'DEATHALLCAUSESRC', 'ENDFOLLOWALLDY', 'DTHMEDRECS', 'DTHAUTOPSYREP']]

c1_temp_dfs = [c1_temp1_form2, c1_temp2_ct_os, c1_temp3_can, c1_temp4_alld]


ICDCODE


"""

c1_mydf = pd.concat([c1_mydf, c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']]], join=left, axis=1)
c1_mydf = c1_mydf.join(
    c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'DEATH', 'DEATHCAUSE','DEATHDY', 'DEATHSRC', 'DEATHCAUSESRC','ENDWHIDY', 'ENDEXT1DY', 'ENDFOLLOWDY']], how='left', on='dbGaP_Subject_ID')
 #####""""


 #c1_pan_sorted = c1_pancan_cases.sort_values(by='dbGaP_Subject_ID')
 #c1_pan_sorted['dbGaP_Subject_ID'].duplicated





"""
c1_outc_cancer_rel4['dbGaP_Subject_ID'].value_counts()
c1_outc_cancer_rel4[c1_outc_cancer_rel4.dbGaP_Subject_ID == 1513699]

c1_outc_cancer_rel4['dbGaP_Subject_ID'].value_counts()[:10].index.tolist()
##################################
"""




# Select patients with pancreatic cancer
c1_pancan_cases = c1_outc_cancer_rel4[c1_outc_cancer_rel4.PANCREAS == 1]
# Sort the data by patient ID
c1_pan_sorted = c1_pancan_cases.sort_values(by='dbGaP_Subject_ID')

# Use df['default payment next month'].value_counts() syntax to find frequency of each dbGaP Subject ID
c1_pan_sorted_counted = c1_pan_sorted['dbGaP_Subject_ID'].value_counts()
sorted(c1_pan_sorted_counted)

testdf = c1_outc_cancer_rel4['dbGaP_Subject_ID'].value_counts()
sorted(testdf)




#### TESTING BELOW TO SELECT PANCAN + OTHER CANCER

c1_outc_cancer_rel4[c1_outc_cancer_rel4[('PANCREAS' == 1) & ([1:x == 1] | [z:y == 1)]]