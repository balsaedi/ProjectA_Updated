library(testthat)

test_that("Data Type and Structure Tests", {

  # Question 1
  expect_is(addition_vec, "numeric")
  expect_is(subtraction_vec, "numeric")
  expect_is(multiplication_vec, "numeric")
  expect_is(division_vec, "numeric")

  # Question 2
  expect_is(regional_manager, "character")

  # Question 3
  expect_is(score_pct, "numeric")
  expect_is(high_scores, "numeric")

  # Question 4
  expect_is(high_pop, "data.frame")

  # Question 5
  expect_is(second_row, "numeric")

  # Question 6
  expect_is(last_element, "logical")
  expect_is(my_list, "list")
  expect_equal(list_length, 7)

  # Question 7
  expect_is(girth_15, "data.frame")

  # Question 8
  expect_is(is_liked, "logical")

  # Question 9
  expect_is(df, "data.frame")
  expect_is(first_five, "data.frame")
  expect_is(data_analysts_df, "data.frame")
  expect_is(avg_salary, "numeric")

  # Question 10
  expect_is(avg_num, "numeric")
  expect_is(squared_num, "numeric")
  expect_is(highest_val, "numeric")

})
