hwe<-read.table (file="WHI_SHARE_aa_temp_6_hardy", header=TRUE)
pdf("histhardy.pdf")
hist(hwe[,9],main="Histogram HWE")
dev.off()

hwe_zoom<-read.table (file="plink2zoomhwe.hardy", header=TRUE)
pdf("histhwe_below_theshold.pdf")
hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
dev.off()
