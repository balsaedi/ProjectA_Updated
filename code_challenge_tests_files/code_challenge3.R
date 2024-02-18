# Load required libraries
library(datasets)
library(ggplot2)


# Define the test cases
test_that("Check Classes and Types for Visualizations", {

  # CO2 dataset

  # Question 1
  expect_is(base_viz1, "NULL")
  expect_is(gg_plot1, "gg")

  # Question 2
  expect_is(base_boxplot, "NULL")
  expect_is(gg_boxplot, "gg")

  # Question 3
  expect_is(base_bar, "NULL")
  expect_is(gg_bar, "gg")

  # Question 4
  expect_is(base_scatterplot, "NULL")
  expect_is(gg_scatterplot, "gg")

  # iris dataset

  # Question 5
  expect_is(base_viz2, "NULL")
  expect_is(gg_plot2, "gg")

  # Question 6
  expect_is(base_iris_boxplot, "NULL")
  expect_is(gg_iris_boxplot, "gg")

  # Question 7
  expect_is(base_viz3, "NULL")
  expect_is(gg_plot3, "gg")

  # Question 8
  expect_is(base_car_scatterplot, "NULL")
  expect_is(gg_car_scatterplot, "gg")

  # airquality dataset

  # Question 9
  expect_is(base_wind_bar, "NULL")
  expect_is(gg_wind_bar, "gg")

  # iris dataset

  # Question 10
  expect_is(base_iris_viz, "NULL")
  expect_is(gg_iris_plot, "gg")

})

