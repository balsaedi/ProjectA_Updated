library(testthat)

test_that("Code Challenges", {

  # 1
  expect_is(fruits_char_counts, "list")
  expect_s3_class(fruits_char_counts, "list")

  # 2
  expect_is(feed_avg_weights, "numeric")

  # 3
  expect_is(airquality_long, "data.frame")

  # 4
  expect_is(sleep_wide, "data.frame")

  # 5
  expect_is(avg_mpg_by_cyl, "data.frame")

  # 6
  expect_is(avg_sepal_length_by_species, "data.frame")

  # 7
  expect_is(squared_values, "list")
  expect_s3_class(squared_values, "list")

  # 8
  expect_is(means, "numeric")

  # 9
  expect_is(column_means, "numeric")

  # 10
  expect_is(other_cumulative_sums, "list")
  expect_s3_class(other_cumulative_sums, "list")
})
