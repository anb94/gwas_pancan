


plink2 --glm --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_9  --covar "${WHI_SHARE_pheno}"/SHARE_aa_covariates_pca.tsv --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_p2
plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_temp_9  --covar "${WHI_SHARE_pheno}"/SHARE_aa_covariates_pca.tsv --covar-variance-standardize 'PHENO1' --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_fin

plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_fin  --covar-variance-standardize 'PHENO1' --make-pgen --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_p2

plink2 --glm no-firth --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_fin  --covar "${WHI_SHARE_pheno}"/WHI_SHARE_aa_fin-b.cov --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_p2

plink2 --pfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_fin  --covar "${WHI_SHARE_pheno}"/WHI_SHARE_aa_fin-b.cov --make-bed --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_p1


plink --bfile "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_aa_p1 --covar "${WHI_SHARE_pheno}"/WHI_SHARE_aa_fin-b.cov --logistic --hide-covar --out "${WHI_SHARE_aa_cb_p2o}"/WHI_SHARE_logistic_results


awk '!/'NA'/' WHI_SHARE_logistic_results.assoc.logistic > logistic_results.assoc_2.logistic

plink --bfile HapMap_3_r3_13 -assoc --adjust --out adjusted_assoc_results
