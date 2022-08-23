# code to get `fatal-police-shootings-data.csv` in data-raw/ goes here
gh_data_url <- "https://github.com/washingtonpost/data-police-shootings/blob/master/fatal-police-shootings-data.csv"

usethis::use_github_file(gh_data_url, save_as = "data-raw/fatal-police-shootings-data.csv")
