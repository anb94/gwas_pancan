#!/bin/bash
# Move to directory containing the geno files for aa consent group 1
cd /home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c1/
# copy the dose files to the combined consent groups directory
echo "Copying aa.c1"
cp *.dose* /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/

# Move to directory containing the geno files for aa consent group 2
cd /home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_aa.genotype-imputed-data.c2/
# copy the dose files to the combined consent groups directory
echo "Copying aa.c2"
cp *.dose* /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/

# Move to the directory with the copied files and combine the consent groups
cd /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_aa.genotype/
for ((i=1; i<=22; i++)); do
echo "Doing aa ${i}"
cat SHAREchr${i}aa.dose.c1 SHAREchr${i}aa.dose.c2 > SHAREchr${i}aa.dose.cb
done

echo "Done AA"

# Move to directory containing the geno files for ha consent group 1
cd /home/anbennett2/dbgap_data/WHI/consentgroup_1/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c1/
# copy the dose files to the combined consent groups directory
echo "Copying ha.c1"
cp *.dose* /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# Move to directory containing the geno files for ha consent group 2
cd /home/anbennett2/dbgap_data/WHI/consentgroup_2/phenogeno/geno/746/phg000592.v1.WHI_SHARE_ha.genotype-imputed-data.c2/
# copy the dose files to the combined consent groups directory
echo "Copying ha.c2"
cp *.dose* /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/

# Move to the directory with the copied files and combine the consent groups
cd /home/anbennett2/dbgap_data/WHI/combined_consentgroups/geno/WHI_SHARE_ha.genotype/
for ((i=1; i<=22; i++)); do
echo "Doing ha ${i}"
cat SHAREchr${i}ha.dose.c1 SHAREchr${i}ha.dose.c2 > SHAREchr${i}ha.dose.cb
done