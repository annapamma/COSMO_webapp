args = commandArgs(trailingOnly=TRUE)

working_dir = args[1]
pro_file = args[2]
rna_file = args[3]
sample_file = args[4]
source(paste(working_dir, "/scripts", "/COSMO/bin/SoonJye_function.R", sep = ""))

gene_file = paste(working_dir, "/scripts", "/COSMO/bin/genes.tsv", sep = "")

out_dir <- "method1_folder"
clinical_attributes <- unlist(strsplit(x="${sample_label}",split=","))
run_2b(pro_file, rna_file, sample_file, gene_file, out_dir=out_dir, clinical_attributes=clinical_attributes)
