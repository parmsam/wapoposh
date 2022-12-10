#' Get latest data from Washington Post Github Repo
#'
#' @param version the dataset version number.
#' @return tibble
#' @export
#' @description Checks if new data is available from the Washington Post Github repo
#' and returns the most current dataset. Returns list with police shootings and
#' agencies dataframes for version 2. Optionally, the user can also select version
#' 1 of the dataset.
#'
#' @importFrom rlang .data
#' @examples
#' latest_data()
latest_data <- function(version = 2){
  if (version == 1) {
    # get package data
    pkg_data <- wapoposh::policeshootings_v2
    # get current data from gh
    gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v1/fatal-police-shootings-data.csv"
    # ensure consistent case on manner of death field
    curr_data <- readr::read_csv(gh_url, show_col_types = FALSE) %>%
      dplyr::mutate(manner_of_death = stringr::str_to_lower(.data$manner_of_death) ) %>%
      dplyr::mutate(date = lubridate::ymd(date))
  } else if (version == 2) {
    pkg_data <- wapoposh::policeshootings_v2
    gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v2/fatal-police-shootings-data.csv"
    curr_data <- readr::read_csv(gh_url, show_col_types = FALSE) %>%
      dplyr::mutate(date = lubridate::ymd(date))
    gh_url2 <- "https://raw.githubusercontent.com/washingtonpost/data-police-shootings/master/v2/fatal-police-shootings-agencies.csv"
    agencies_data <- readr::read_csv(gh_url2, show_col_types = FALSE)
  }
  # compare to check if identical
  identical_check <- FALSE
  if( !identical(pkg_data, curr_data) & length(curr_data) > 1 ){
    identical_check <- TRUE
  }

  if(identical_check & version == 2){
    message("update available...returning latest version")
    return(
      list("police_shootings" = curr_data,
           "agencies" = agencies_data)
      )
  } else if (version == 1) {
    return(curr_data)
  } else{
    message("no update available...returned existing package dataset")
    return(pkg_data)
  }
}
