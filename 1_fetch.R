source("1_fetch/src/get_nwis_data.R")

p1_targets_list <- list(
  tar_target(
    site_01427207,
    download_nwis_site_data(site_num = "01427207"),
  ),
  tar_target(
    site_01432160,
    download_nwis_site_data(site_num = "01432160"),
  ),
  tar_target(
    site_01435000,
    download_nwis_site_data(site_num = "01435000"),
  ),
  tar_target(
    site_01436690,
    download_nwis_site_data(site_num = "01436690"),
  ),
  tar_target(
    site_01466500,
    download_nwis_site_data(site_num = "01466500"),
  ),
  tar_target(
    site_data_csv,
    combine_sites(file_out = "1_fetch/out/site_data.csv", 
                  site_01427207, site_01432160, site_01435000, site_01436690, site_01466500),
    format = "file"
  ),
  tar_target(
    site_info,
    nwis_site_info(site_data_csv)
  )
)