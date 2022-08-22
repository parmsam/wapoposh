test_that("tibble is created with correct cols of interest", {
  temp_df <- latest_data()
  expect_equal( tibble::is_tibble(temp_df), TRUE)
  expect_equal( base::ncol(temp_df), 17)

  temp_colnames <- c("id", "name", "date", "manner_of_death", "armed",
  "age", "gender", "race", "city", "state", "signs_of_mental_illness", "threat_level",
  "flee", "body_camera", "longitude", "latitude", "is_geocoding_exact")
  expect_equal( base::colnames(temp_df), temp_colnames)
})
