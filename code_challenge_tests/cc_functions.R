library(testthat)

test_that("Check if Functions Exist", {

  # Question 1
  expect_true(is.function(check_even_odd), "check_even_odd should be a function")

  # Question 2
  expect_true(is.function(is_prime), "is_prime should be a function")

  # Question 3
  expect_true(is.function(calculate_triangle_area), "calculate_triangle_area should be a function")

  # Question 4
  expect_true(is.function(find_maximum), "find_maximum should be a function")

  # Question 5
  expect_true(is.function(calculate_average), "calculate_average should be a function")

  # Question 6
  expect_true(is.function(is_palindrome), "is_palindrome should be a function")

  # Question 7
  expect_true(is.function(calculate_factorial), "calculate_factorial should be a function")

  # Question 8
  expect_true(is.function(is_positive), "is_positive should be a function")

  # Question 9
  expect_true(is.function(is_leap_year), "is_leap_year should be a function")

  # Question 10
  expect_true(is.function(reverse_vector), "reverse_vector should be a function")

})
