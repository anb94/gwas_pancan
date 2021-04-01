import pandas as pd
import numpy as np

# Load the data from consent group 1
c1_form2=pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c1.f2_rel1.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_ct_os=pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c1.outc_ct_os_rel4.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_cancer_rel4=pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c1.outc_cancer_rel4.HMB-IRB.txt', sep="\t", comment='#')
c1_outc_death_all_discovered=pd.read_csv('~/WHI/consentgroup1/RootStudy/PhenotypeFiles//phs000200.v11.pht006220.v1.p3.c1.outc_death_all_discovered_rel1.HMB-IRB.txt', sep="\t", comment='#')

# Load the data from consent group 2
c2_form2=pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht000998.v6.p3.c2.f2_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_ct_os=pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht003407.v3.p3.c2.outc_ct_os_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_cancer_rel4=pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht003404.v3.p3.c2.outc_cancer_rel4.HMB-IRB-NPU.txt', sep="\t", comment='#')
c2_outc_death_all_discovered=pd.read_csv('/home/user22/WHI/consentgroup2/RootStudy/PhenotypeFiles/phs000200.v11.pht006220.v1.p3.c2.outc_death_all_discovered_rel1.HMB-IRB-NPU.txt', sep="\t", comment='#')

#Create subject ID dataframes
c1_subject_ID = pd.Dataframe()
c1_subject_ID['dbGaP_Subject_ID'] = c1_form2['dbGaP_Subject_ID']

c2_subject_ID = pd.Dataframe()
c2_subject_ID['dbGaP_Subject_ID'] = c2_form2['dbGaP_Subject_ID']

# Testing the merge
c1_mydf = pd.merge(left=c1_subject_ID, right=c1_form2[['dbGaP_Subject_ID', 'AGE', 'AGER', 'RACE']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')
c1_mydf = pd.merge(left=c1_subject_ID, right=c1_outc_ct_os[['dbGaP_Subject_ID', 'PANCREAS', 'ICDCODE']], how='left', left_on='dbGaP_Subject_ID', right_on='dbGaP_Subject_ID')

