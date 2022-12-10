test_that("v1 shootings tibble is created with correct cols of interest", {
  temp_df <- latest_data(version=1)
  expect_equal( tibble::is_tibble(temp_df), TRUE)
  expect_equal( base::ncol(temp_df), 17)

  temp_colnames <- c("id", "name", "date", "manner_of_death", "armed",
  "age", "gender", "race", "city", "state", "signs_of_mental_illness", "threat_level",
  "flee", "body_camera", "longitude", "latitude", "is_geocoding_exact")
  expect_equal( base::colnames(temp_df), temp_colnames)
})

test_that("v2 shootings tibble is created with correct cols of interest", {
  temp_df <- latest_data(version=2)[[1]]
  expect_equal( tibble::is_tibble(temp_df), TRUE)
  expect_equal( base::ncol(temp_df), 19)

  temp_colnames <- c("id","date","threat_type","flee_status","armed_with","city","county",
                     "state", "latitude", "longitude", "location_precision", "name", "age",
                     "gender", "race", "race_source", "was_mental_illness_related",
                     "body_camera", "agency_ids")
  expect_equal( base::colnames(temp_df), temp_colnames)
})

test_that("v2 agencies tibble is created with correct cols of interest", {
  temp_df <- latest_data(version=2)[[2]]
  expect_equal( tibble::is_tibble(temp_df), TRUE)
  expect_equal( base::ncol(temp_df), 6)

  temp_colnames <- c("id", "name", "type", "state", "oricodes", "total_shootings")
  expect_equal( base::colnames(temp_df), temp_colnames)
})
