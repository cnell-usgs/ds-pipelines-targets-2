process_data <- function(site_data_csv, site_info, file_out){
  read_csv(site_data_csv) %>%
    rename(water_temperature = X_00010_00000) %>% 
    left_join(site_info, by = "site_no") %>% 
    select(station_name = station_nm, site_no, dateTime, water_temperature, latitude = dec_lat_va, longitude = dec_long_va) %>%
    mutate(station_name = as.factor(station_name)) %>%
    write_csv(file_out)
  
  return(file_out)
}

