args = commandArgs(trailingOnly=TRUE)

working_dir = args[1]
pro_file = args[2]
rna_file = args[3]
sample_file = args[4]
source(paste(working_dir, "/scripts", "/COSMO/bin/tools.R", sep = ""))

# pro_file <- "${pro_file}"
# rna_file <- "${rna_file}"
# sample_file <- "${sample_file}"
out_dir <- "data_use"
dir.create(out_dir)
format_input_data(pro_file, rna_file, sample_file, out_dir = out_dir)
