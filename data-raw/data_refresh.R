# code to get `fatal-police-shootings-data.csv` in data-raw/ goes here
## specify data urls
death_record_url_v1 <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v1/fatal-police-shootings-data.csv"
death_record_url_v2 <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v2/fatal-police-shootings-data.csv"
agency_url_v2 <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v2/fatal-police-shootings-agencies.csv"
## download datasets
download.file(death_record_url_v1, destfile = "data-raw/fatal-police-shootings-data_v1.csv")
download.file(death_record_url_v2, destfile = "data-raw/fatal-police-shootings-data_v2.csv")
download.file(agency_url_v2, destfile = "data-raw/fatal-police-shootings-agencies_v2.csv")
