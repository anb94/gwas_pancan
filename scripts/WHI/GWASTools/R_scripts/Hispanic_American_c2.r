library(GWASTools)

## Hispanic American

#Load scan file into R

scanfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/pheno_variables/c2_SHARE_HA_pheno.csv"




### Chromosome 1
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr1_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr1ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr1ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr1ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr1ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=1, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 2
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr2_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr2ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr2ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr2ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr2ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=2, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 3
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr3_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr3ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr3ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr3ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr3ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=3, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 4
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr4_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr4ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr4ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr4ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr4ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=4, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 5
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr5_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr5ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr5ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr5ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr5ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=5, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 6
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr6_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr6ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr6ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr6ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr6ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=6, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 7
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr7_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr7ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr7ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr7ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr7ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=7, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 8
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr8_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr8ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr8ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr8ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr8ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=8, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 9
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr9_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr9ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr9ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr9ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr9ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=9, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 10
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr10_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr10ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr10ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr10ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr10ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=10, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 11
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr11_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr11ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr11ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr11ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr11ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=11, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 12
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr12_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr12ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr12ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr12ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr12ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=12, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 13
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr13_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr13ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr13ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr13ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr13ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=13, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 14
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr14_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr14ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr14ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr14ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr14ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=14, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 15
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr15_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr15ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr15ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr15ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr15ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=15, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 16
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr16_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr16ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr16ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr16ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr16ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=16, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 17
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr17_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr17ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr17ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr17ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr17ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=17, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)




### Chromosome 18
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr18_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr18ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr18ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr18ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr18ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=18, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 19
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr19_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr19ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr19ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr19ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr19ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=19, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 20
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr20_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr20ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr20ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr20ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr20ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=20, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



### Chromosome 21
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr21_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr21ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr21ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr21ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr21ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=21, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)


### Chromosome 22
#Load chromosome files into R:


gdsfile <- "/home/anbennett2/analysis/pheno_geno_files/WHI_SHARE/gdsfiles/chr22_c2_ha.gds"
snpfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/snpannotfiles/chr22ha_snpannot"
dosefile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr22ha.dose.c2"
markfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/SHAREchr22ha.info"
posfile <- "/home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/posfiles/ha/SHAREchr22ha_posfile.csv"


#Generate GDS File:

imputedDosageFile(input.files=c(dosefile, markfile, posfile), filename=gdsfile, chromosome=22, input.type="MaCH", input.dosage=TRUE, 
file.type="gds",snp.annot.filename=snpfile, scan.annot.filename=scanfile, scan.df=NULL, snp.exclude=NULL, prob.threshold=0.9, verbose=TRUE)



