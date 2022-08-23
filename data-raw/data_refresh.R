# code to get `fatal-police-shootings-data.csv` in data-raw/ goes here
gh_data_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/fatal-police-shootings-data.csv"

download.file(gh_data_url, destfile = "data-raw/fatal-police-shootings-data.csv")
