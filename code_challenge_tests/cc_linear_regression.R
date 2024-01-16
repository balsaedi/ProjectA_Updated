library(testthat)
library(ggplot2)

# Load the mtcars dataset
data(mtcars)

test_that("Linear regression analysis on mtcars dataset", {

  # Check if linear_model is of class "lm"
  expect_true(class(linear_model) == "lm",
              info = "linear_model should be of class 'lm'")

  # Check if confidence_interval is a matrix
  expect_true(is.matrix(confidence_interval),
              info = "confidence_interval should be a matrix")

  # Check if model_summary is of class "summary.lm"
  expect_true(class(model_summary) == "summary.lm",
              info = "model_summary should be of class 'summary.lm'")

  # Check if predicted_mpg is a numeric vector
  expect_true(is.numeric(predicted_mpg),
              info = "predicted_mpg should be a numeric vector")
})
