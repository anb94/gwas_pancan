#!/bin/bash
#SBATCH --partition=cpu_1d32n
#SBATCH --ntasks-per-node=16
#SBATCH --time=30:00:00
#SBATCH --output=parallel_%j.log     # Standard output and error log

module load intel_compiler
module load intel_mpi

cd $HOME

export OMP_NUM_THREADS=32
export FI_SOCKETS_IFACE=ib0
export FI_PROVIDER=verbs

singularity shell ~/containers/raptor_v1
Rscript /home/anbennett2/gwas_pancan/scripts/WHI/GWASTools/R_scripts/African_American_c1.r

