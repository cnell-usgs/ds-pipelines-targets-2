plot_nwis_timeseries <- function(file_out, site_data_clean_csv, width = 12, height = 7, units = 'in'){
  
  site_data_styled <- read_csv(site_data_clean_csv)
  
  ggplot(data = site_data_styled, aes(x = dateTime, y = water_temperature, color = station_name)) +
    geom_line() + theme_bw()
  ggsave(file_out, width = width, height = height, units = units)
  
  return(file_out)
}