source("2_process/src/process_and_style.R")


p2_targets_list <- list(
  tar_target(
    site_data_clean_csv, 
    process_data(site_data_csv, site_info, file_out = "2_process/out/site_data_clean.csv"),
    format = "file"
  )
)
