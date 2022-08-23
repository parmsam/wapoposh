# code to prepare `police_shootings` dataset goes here
# gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv"
data_path <- "data-raw/fatal-police-shootings-data.csv"
# read data from github
policeshootings <- readr::read_csv(data_path)
# data cleaning code here
policeshootings <- police_shootings %>%
  # ensure consistent case on manner of death field
  dplyr::mutate(manner_of_death = stringr::str_to_lower(manner_of_death) )

usethis::use_data(policeshootings, overwrite = TRUE)
