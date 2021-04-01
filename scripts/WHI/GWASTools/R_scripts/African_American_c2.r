library(GWASTools)

# Consent Group 2

## African American

#Load scan file into R

scanfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/pheno_variables/c2_SHARE_AA_pheno.csv"



### Chromosome 1
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr1_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr1aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr1aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr1aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr1aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=1, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 2
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr2_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr2aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr2aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr2aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr2aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=2, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 3
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr3_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr3aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr3aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr3aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr3aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=3, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 4
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr4_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr4aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr4aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr4aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr4aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=4, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 5
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr5_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr5aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr5aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr5aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr5aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=5, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 6
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr6_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr6aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr6aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr6aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr6aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=6, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 7
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr7_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr7aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr7aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr7aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr7aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=7, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 8
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr8_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr8aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr8aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr8aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr8aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=8, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 9
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr9_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr9aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr9aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr9aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr9aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=9, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 10
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr10_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr10aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr10aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr10aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr10aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=10, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 11
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr11_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr11aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr11aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr11aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr11aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=11, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 12
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr12_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr12aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr12aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr12aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr12aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=12, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 13
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr13_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr13aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr13aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr13aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr13aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=13, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 14
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr14_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr14aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr14aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr14aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr14aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=14, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 15
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr15_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr15aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr15aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr15aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr15aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=15, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 16
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr16_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr16aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr16aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr16aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr16aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=16, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 17
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr17_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr17aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr17aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr17aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr17aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=17, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 18
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr18_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr18aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr18aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr18aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr18aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=18, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 19
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr19_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr19aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr19aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr19aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr19aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=19, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 20
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr20_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr20aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr20aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr20aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr20aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=20, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 21
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr21_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr21aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr21aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr21aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr21aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=21, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 22
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr22_c2_aa.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr22aa_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr22aa.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/SHAREchr22aa.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/aa/SHAREchr22aa_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=22, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)

