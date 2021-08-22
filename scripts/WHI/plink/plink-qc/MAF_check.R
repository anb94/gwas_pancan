#MAF_check.R - Minor allele frequency

maf_freq <- read.table("MAF_check.afrq", header =TRUE, as.is=T)
pdf("MAF_distribution.pdf")
hist(maf_freq[,5],main = "MAF distribution", xlab = "MAF")
dev.off()
