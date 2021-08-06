


# Missingness

varmiss<-read.table(file="plink2.vmiss", header=TRUE)
sampmiss<-read.table(file="plink2.smiss", header=TRUE)
# read dvata into R 

pdf("histvmiss.pdf") #indicates pdf format and gives title to file
hist(varmiss[,6],main="Histogram variant missingness") #selects column 6, names header of file

pdf("histlmiss.pdf") 
hist(snpmiss[,6],main="Histogram Sampe missingness")  
dev.off() # shuts down the current device


# Hardy Weinberg

hwe<-read.table (file="plink2.hardy", header=TRUE)
pdf("histhardy.pdf")
hist(hwe[,9],main="Histogram HWE")
dev.off()

hwe_zoom<-read.table (file="plink2zoomhwe.hardy", header=TRUE)
pdf("histhwe_below_theshold.pdf")
hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
dev.off()