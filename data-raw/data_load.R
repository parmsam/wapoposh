# code to prepare `police_shootings` dataset goes here
# gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv"
data_path_v1 <- "data-raw/fatal-police-shootings-data_v1.csv"
data_path_v2 <- "data-raw/fatal-police-shootings-data_v2.csv"
agency_path_v2 <- "data-raw/fatal-police-shootings-agencies_v2.csv"
# read data from github
policeshootings_v1 <- readr::read_csv(data_path_v1)
policeshootings_v2 <- readr::read_csv(data_path_v2)
agencies_v2 <- readr::read_csv(agency_path_v2)
# ensure access to pipe
`%>%` <- magrittr::`%>%`
# data cleaning code here
policeshootings_v1 <- policeshootings_v1 %>%
  # ensure consistent case on manner of death field
  dplyr::mutate(manner_of_death = stringr::str_to_lower(manner_of_death) ) %>%
  dplyr::mutate(date = lubridate::ymd(date))

policeshootings_v2 <- policeshootings_v2 %>%
  # ensure consistent case on manner of death field
  dplyr::mutate(date = lubridate::ymd(date))
# usethis::use_data(policeshootings, overwrite = TRUE)
save(policeshootings_v1, file = "data/policeshootings_v1.rda", compress = "xz")
save(agencies_v2, file = "data/agencies_v2.rda", compress = "xz")
save(policeshootings_v2, file = "data/policeshootings_v2.rda", compress = "xz")
