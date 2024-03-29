library(GWASTools)

## African American

#Load scan file into R

scanfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/pheno_variables/cb_SHARE_HA_pheno.csv"



### Chromosome 1
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr1_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr1ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/SHAREchr1ha.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr1aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr1aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=1, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 2
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr2_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr2ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr2aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr2aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr2aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=2, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 3
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr3_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr3ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr3aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr3aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr3aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=3, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 4
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr4_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr4ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr4aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr4aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr4aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=4, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 5
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr5_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr5ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr5aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr5aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr5aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=5, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 6
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr6_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr6ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr6aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr6aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr6aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=6, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 7
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr7_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr7ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr7aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr7aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr7aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=7, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 8
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr8_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr8ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr8aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr8aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr8aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=8, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 9
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr9_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr9ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr9aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr9aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr9aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=9, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 10
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr10_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr10ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr10aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr10aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr10aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=10, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 11
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr11_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr11ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr11aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr11aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr11aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=11, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 12
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr12_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr12ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr12aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr12aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr12aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=12, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 13
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr13_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr13ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr13aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr13aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr13aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=13, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 14
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr14_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr14ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr14aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr14aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr14aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=14, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 15
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr15_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr15ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr15aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr15aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr15aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=15, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 16
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr16_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr16ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr16aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr16aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr16aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=16, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 17
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr17_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr17ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr17aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr17aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr17aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=17, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 18
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr18_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr18ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr18aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr18aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr18aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=18, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 19
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr19_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr19ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr19aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr19aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr19aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=19, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 20
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr20_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr20ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr20aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr20aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr20aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=20, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 21
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr21_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr21ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr21aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr21aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr21aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=21, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 22
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr22_cb_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr22ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/SHAREchr22aa.dose.cb"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/SHAREchr22aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr22aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=22, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)