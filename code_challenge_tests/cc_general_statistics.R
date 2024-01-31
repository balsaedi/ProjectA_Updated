library(testthat)


# Question 1
test_that("Check penguins_contingency_table data type", {
  expect_true(is.data.frame(penguins_contingency_table), "penguins_contingency_table should be a data frame")
})

# Question 2
test_that("Check penguins_xtabs_table data type", {
  expect_true(is.table(penguins_xtabs_table), "penguins_xtabs_table should be a table object")
})

# Question 3
test_that("Check penguins_species_proportions data type", {
  expect_true(is.data.frame(penguins_species_proportions), "penguins_species_proportions should be a data frame")
})

# Question 4
test_that("Check t_test_mpg_vs_cyl_pvalue data type", {
  expect_true(is.numeric(t_test_mpg_vs_cyl_pvalue), "t_test_mpg_vs_cyl_pvalue should be numeric")
})

# Question 5
test_that("Check z_scores_body_mass data type", {
  expect_true(is.numeric(z_scores_body_mass), "z_scores_body_mass should be numeric")
})

# Question 6
test_that("Check z_scores_flipper_length data type", {
  expect_true(is.numeric(z_scores_flipper_length), "z_scores_flipper_length should be numeric")
})

# Question 7
test_that("Check transmission_table data type", {
  expect_true(is.table(transmission_table), "transmission_table should be a table object")
})

# Question 8
test_that("Check iris_species_table data type", {
  expect_true(is.table(iris_species_table), "iris_species_table should be a table object")
})

# Question 9
test_that("Check penguin_cross_tab data type", {
  expect_true(is.table(penguin_cross_tab), "penguin_cross_tab should be a table object")
})

# Question 10
test_that("Check discount_types data type", {
  expect_true(is.table(discount_types), "discount_types should be a table object")
})
