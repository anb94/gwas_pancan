## read data into R 
sample_miss<-read.table(file="plink2.smiss", header=TRUE)
variant_miss<-read.table(file="plink2.vmiss", header=TRUE)

pdf("histsmiss.pdf") 
hist(snpmiss[,6],main="Histogram of Sample missingness") # Selects column 6 (F_MISS)


pdf("histvmiss.pdf") #indicates pdf format and gives title to file
hist(varmiss[,5],main="Histogram of Variant missingness") # Selects column 5 (F_MISS)
dev.off() # shuts down the current device
