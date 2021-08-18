#!/bin/bash

# Define environment variables
## Define SHARE Root directory:
build_dir=$HOME/test

wget https://raw.githubusercontent.com/anb94/gwas_pancan/master/singularity_images/custom_singularity_images/canary_v5.def -O "${build_dir}"/canary.def
sudo singularity build --sandbox "${build_dir}"/canary_v5.sif "${build_dir}"/canary.def
sudo singularity run --writable "${build_dir}"/canary_v5.sif ./canary_upgrade.sh

