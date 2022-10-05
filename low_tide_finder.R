#install.packages("rvest")
library(stringr)
library(rvest)
library(tidyverse)
library(lubridate)

source("locations.R")
list_locations <- function() {
  message("Please choose from available locations:")
  print(paste(locations, sep ="\n"))
  message("Please use the full name of the location. (ie, 'Monterey-Monterey-Harbor-California')")
  
}
find_tide <- function(location = "Monterey-Monterey-Harbor-California"){ 
  
  url = paste0("https://www.tide-forecast.com/locations/", location, "/tides/latest")
  tides <- tryCatch(
    {read_html(url)},
    error = function(cond) {
      message("Please use a valid location. 
      You can use list_locations() for a list of valid locations in California. 
          For non-Californian locations, please go to the tide-forecast.com website and look for the 
          specific spelling and formatting of your desired location.")
    })
  
  if(!is.null(tides)){
    tidechart <- tides %>% html_nodes(xpath="/html/body/main/div[3]/div[1]/div[1]/div[3]/div[2]/div/div/table") %>% 
      html_table()
    tc <- as.data.frame(tidechart[[1]])
    row.names(tc) <- c("time", "blank1", "high", "low", "sun", "moon", "wind", "blank2", "blank3")
    
    tc['low',] -> lowtide
    # select is to remove the most recent day because its formatting is different than the rest
    lowtide %>% select(-(1:4)) %>% gather(date, tide) -> lowtide
    suppressWarnings(lowtide %>%
                       separate(col = tide, into = c("first", "second"), sep = "m") %>% 
                       gather(time, tide, -1) %>% 
                       separate(col = tide, into = c("time", "height"), sep = "M") %>%
                       mutate(height = as.numeric(height)) -> lt)
    
    lt %>% filter(height < 0)  %>% 
      filter(!is.na(height)) %>%
      mutate(date = str_trim(date)) %>%
      # a minute after midnight is 00:01 instead of 12:01, and R doesn't like this 
      # so replacing all "00:"s with "12:"s
      mutate(time = ifelse(grepl("00:", time), str_replace(time, "00:", "12:"), time)) -> neg_tide
    
    if(nrow(neg_tide) == 0){ 
      return("No negative tides")
    } 
    tc['sun',] -> sun
    suppressWarnings(sun %>% select(-(1:4)) %>% gather(date, sun) %>% 
                       separate(col = sun, into = c("sunrise", "sunset"), sep = " ") -> sun)
    
    
    good_tides <- data.frame()
    
    
    
    for(row in 1:nrow(neg_tide)){
      neg_tide[row,3] -> tide_height
      neg_tide[row,1] -> tide_day
      neg_tide[row,2] -> tide_time
      lowest_tide_dt <- paste0(tide_day," ", tide_time, "M")
      lowest_tide_time <- as.POSIXlt(lowest_tide_dt, format = "%d %b %I:%M%p" )
      
      sun %>% filter(date == tide_day) -> sun_day
      sun_day[1, "sunset"] -> sunset
      sun_day[1, "sunrise"] -> sunrise
      sunset <- as.POSIXlt(paste(tide_day, sunset), format = "%d %b %I:%M%p")
      
      sunrise <- as.POSIXlt(paste(tide_day, sunrise), format = "%d %b %I:%M%p")
      
      daylight <- lowest_tide_time %within% interval(sunrise, sunset)
      
      if(daylight == TRUE){
        df <- data.frame(day = tide_day,
                         time = tide_time, 
                         tide = tide_height, 
                         time_to_sunset = sunset - lowest_tide_time, 
                         day_of_week = wday(lowest_tide_time, label = TRUE))
        good_tides <-  good_tides %>% bind_rows(df)
      }
      else {next}
      
    }
    return(good_tides)
  } 
}
