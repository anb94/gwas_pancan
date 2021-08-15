# ORDER
#hist_miss.R
#gender_check.R
#MAF_check.R
#hwe.R
#check_heterozygosity_rate.R
#heterozygosity_outliers_list.R
#Relatedness.R

#gender_check.R

gender <- read.table("plink.sexcheck", header=T,as.is=T)

pdf("Gender_check.pdf")
hist(gender[,6],main="Gender", xlab="F")
dev.off()

pdf("Men_check.pdf")
male=subset(gender, gender$PEDSEX==1)
hist(male[,6],main="Men",xlab="F")
dev.off()

pdf("Women_check.pdf")
female=subset(gender, gender$PEDSEX==2)
hist(female[,6],main="Women",xlab="F")
dev.off()




#MAF_check.R - Minor allele frequency

maf_freq <- read.table("MAF_check.frq", header =TRUE, as.is=T)
pdf("MAF_distribution.pdf")
hist(maf_freq[,5],main = "MAF distribution", xlab = "MAF")
dev.off()




#hwe.R - Hardy Weinberg

hwe<-read.table (file="plink2.hardy", header=TRUE)
pdf("histhardy.pdf")
hist(hwe[,9],main="Histogram HWE")
dev.off()

hwe_zoom<-read.table (file="plink2zoomhwe.hardy", header=TRUE)
pdf("histhwe_below_theshold.pdf")
hist(hwe_zoom[,9],main="Histogram HWE: strongly deviating SNPs only")
dev.off()




#check_heterozygosity_rate.R

het <- read.table("R_check.het", head=TRUE)
pdf("heterozygosity.pdf")
het$HET_RATE = (het$"N.NM." - het$"O.HOM.")/het$"N.NM."
hist(het$HET_RATE, xlab="Heterozygosity Rate", ylab="Frequency", main= "Heterozygosity Rate")
dev.off()




#heterozygosity_outliers_list.R

het <- read.table("R_check.het", head=TRUE)
het$HET_RATE = (het$"N.NM." - het$"O.HOM.")/het$"N.NM."
het_fail = subset(het, (het$HET_RATE < mean(het$HET_RATE)-3*sd(het$HET_RATE)) | (het$HET_RATE > mean(het$HET_RATE)+3*sd(het$HET_RATE)));
het_fail$HET_DST = (het_fail$HET_RATE-mean(het$HET_RATE))/sd(het$HET_RATE);
write.table(het_fail, "fail-het-qc.txt", row.names=FALSE)




#Relatedness.R

pdf("relatedness.pdf")
relatedness = read.table("pihat_min0.2.genome", header=T)
par(pch=16, cex=1)
with(relatedness,plot(Z0,Z1, xlim=c(0,1), ylim=c(0,1), type="n"))
with(subset(relatedness,RT=="PO") , points(Z0,Z1,col=4))
with(subset(relatedness,RT=="UN") , points(Z0,Z1,col=3))
legend(1,1, xjust=1, yjust=1, legend=levels(relatedness$RT), pch=16, col=c(4,3))

pdf("zoom_relatedness.pdf")
relatedness_zoom = read.table("zoom_pihat.genome", header=T)
par(pch=16, cex=1)
with(relatedness_zoom,plot(Z0,Z1, xlim=c(0,0.02), ylim=c(0.98,1), type="n"))
with(subset(relatedness_zoom,RT=="PO") , points(Z0,Z1,col=4))
with(subset(relatedness_zoom,RT=="UN") , points(Z0,Z1,col=3))
legend(0.02,1, xjust=1, yjust=1, legend=levels(relatedness$RT), pch=16, col=c(4,3))

pdf("hist_relatedness.pdf")
relatedness = read.table("pihat_min0.2.genome", header=T)
hist(relatedness[,10],main="Histogram relatedness", xlab= "Pihat")
dev.off()
