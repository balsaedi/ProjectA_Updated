#  CODE CHALLENGE 5

#  1. Create a list named fruits containing the elements: apple, mango, peach,
#  orange, watermelon, avocado, and pawpaw. Use `lapply()` to apply an
#  anonymous function that counts the number of characters in each element.
#  Assign the resulting list to a variable named `fruits_char_counts`
#
#  2. Using the chickwts dataset, calculate the average weight for each feed
#  category using the `tapply()` function. Assign the resulting averages to a
#  variable named `feed_avg_weights`
#
#  3. Reshape the airquality dataset from wide to long format. Assign the
#  resulting long format dataset to a variable named `airquality_long`
#
#  4. Using the `sleep` dataset(use `data(sleep)` to load it), transform it
#  from long to wide format and assign the resulting wide format dataset to
#  a variable named `sleep_wide`
#
#  5. Use the aggregate() function to group the mtcars dataset by the number of
#  cylinders and calculate the average miles per gallon for each cylinder
#  category. Assign the resulting aggregated dataset to a variable named
#  `avg_mpg_by_cyl`
#  6. Use the aggregate() function to calculate the average sepal length
#  for each species (Species). Assign the resulting aggregated dataset to a
#  variable named `avg_sepal_length_by_species`
#
#  7. Create a list named `numeric_lists` containing numeric vectors, vector 1
#  contains values from 25 to 32, the second vector contains values from 41 to
#  48 and the third vector contains values from 7 to 14. Use `lapply()` to
#  apply an anonymous function that squares each element in each numeric
#  vector. Assign the resulting list to a variable named `squared_values`
#
#  8. Create a list named `age_lists` containing three numeric vectors:
#    c(17, 21, 3, 19, 50), c(14, 50, 77, 16, 87), c(37, 8, 90, 43, 60). Use
#  `sapply()` to apply an anonymous function that calculates the mean of each
#  ages vector. For simplification, name the vectors, v1, v2 and v3
#  respectively. Assign the resulting vector of means to a variable
#  named `means`
#
#  9. Given a matrix `mat`, calculate the mean of non-missing values in each
#  column using `apply()`. Assign the resulting vector of column-wise means to a
#  variable named `column_means`
#
#  10. Given a list named `scores` calculated out of 10 containing numeric
#  vectors, use `lapply()` to calculate the cumulative sum for each vector.
#  Assign the resulting list of cumulative sums to a variable named
#  `other_cumulative_sums`
