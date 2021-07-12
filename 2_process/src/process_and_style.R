process_data <- function(nwis_data, site_info_csv){
  nwis_data_clean <- rename(nwis_data, water_temperature = X_00010_00000) %>% 
    left_join(read_csv(site_info_csv), by = "site_no") %>% 
    select(station_name = station_nm, site_no, dateTime, water_temperature, latitude = dec_lat_va, longitude = dec_long_va) %>%
    mutate(station_name = as.factor(station_name))
  
  return(nwis_data_clean)
}

