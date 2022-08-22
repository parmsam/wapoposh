## code to prepare `police_shootings` dataset goes here
gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv"

policeshootings <- readr::read_csv(gh_url)

usethis::use_data(policeshootings, overwrite = TRUE)

# TODO - data cleaning code here
