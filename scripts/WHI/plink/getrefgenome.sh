#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
workingdir=$HOME/scratch/

# Change to scratch directory
cd ${workingdir}
# Download the file to the scratch directory
wget http://ftp.ensembl.org/pub/grch37/release-93/variation/vcf/homo_sapiens/1000GENOMES-phase_3.vcf.gz .
zgrep -v '^#' 1000GENOMES-phase_3.vcf.gz | cut -f 1-5 > snp_annot_grch37.txt


paste snp_annot_grch37.txt <(awk 'BEGIN {OFS=":"} {print $1,$2}' snp_annot_grch37.txt) > snp_annot_grch37_withLoci.txt
cat snp_annot_grch37_withLoci.txt | sort -u -k3,3 | sort -u -k6,6 -V > snp_annot_grch37_nodups.txt  # Unique rsID and chr:pos locus
rm snp_annot_grch37.txt snp_annot_grch37_withLoci.txt
