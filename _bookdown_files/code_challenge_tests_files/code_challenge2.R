library(testthat)

test_that("Question 1: Find max and min seats", {
  result <- get_max_min_seats_used_car_dataset()
  expect_is(result$max_seats, "numeric")
  expect_is(result$min_seats, "numeric")
})

test_that("Question 2: Mileage variance and standard deviation", {
  result <- get_mileage_variance_and_sd()
  expect_is(result$mileage_var, "numeric")
  expect_is(result$mileage_sd, "numeric")
})

test_that("Question 3: Mileage skewness", {
  is_skewed <- get_mileage_skewness()
  expect_is(is_skewed, "character")
})

test_that("Question 4: Correlation between seats and mileage", {
  is_correlated <- get_correlation_seats_mileage()
  expect_is(is_correlated, "character")
})

test_that("Question 5: Avocado prices skewness", {
  is_skewed <- get_avocado_prices_skewness()
  expect_is(is_skewed, "character")
})

test_that("Question 6: Range of total volume of avocados", {
  volume_range <- get_total_volume_range()
  expect_is(volume_range, "numeric")
})

test_that("Question 7: Standard deviation and variance of total bags", {
  tot_bags_stats <- get_tot_bags_stats()
  expect_is(tot_bags_stats$tot_bags_sd, "numeric")
  expect_is(tot_bags_stats$tot_bags_variance, "numeric")
})

test_that("Question 8: IQR, median, and mean of extra large bags", {
  xl_bags_stats <- get_xl_bags_stats()
  expect_is(xl_bags_stats$xl_bags_iqr, "numeric")
  expect_is(xl_bags_stats$xl_bags_median, "numeric")
  expect_is(xl_bags_stats$xl_bags_avg, "numeric")
})

test_that("Question 9: Average calories of Caffè Latte", {
  latte_avg <- get_latte_average_calories()
  expect_is(latte_avg, "numeric")
})

test_that("Question 10: Standard deviation of total fat in Classic Espresso Drinks", {
  total_fat_sd <- get_total_fat_sd_classic_espresso_drinks()
  expect_is(total_fat_sd, "numeric")
})

