# DATA TYPES CODE CHALLENGE

#-------------------------- CHAPTER 2 -----------------------------------------#
# Q1
# student's vector elements may differ for both vectors
vec1 <- c(3, 7, 12, 5)
vec2 <- c(2, 4, 6, 2)

# operations
addition_vec <- vec1 + vec2
subtraction_vec <- vec1 - vec2
multiplication_vec <- vec1 * vec2
division_vec <- vec1 / vec2

# Q2
office_buddies <- c("Jim", "Pam", "Michael", "Oscar", "Dwight", "Stanley")
regional_manager <- office_buddies[3]

# Q3
score <- c(15, 25, 8, 39, 4, 45, 33, 31, 49, 21)
max_score <- 50

score_pct <- (score / max_score) * 100
high_scores <- score_pct[score_pct > 60]

# Q4
df <- datasets::USArrests
high_pop <- df[df$UrbanPop >= 80, ]

# Q5
myMatrix <- matrix(1:16, nrow = 4, ncol = 4)
second_row <- myMatrix[2, ]

# Q6
my_list <- list("apple", "mango", 56.9, TRUE, "tropical", 35, FALSE)

last_element <- my_list[[7]]
my_list <- c(my_list, "Jamaica")
my_list <- my_list[-4]
list_length <- length(my_list)

# Q7
df <- datasets::trees
girth_15 <- df[df$Girth > 15, ]

# Q8
real_madrid <- list(
  stadium = "Santiago Bernabéu",
  city = "Madrid",
  year_founded = 1902,
  league = "La Liga"
)

is_liked <- TRUE

real_madrid$is_liked <- is_liked

# Q9
df <- read.csv("files/datasets/jobs_in_data.csv")

first_five <- df[1:5, ]

data_analysts_df <- df[df$job_title == "Data Analyst", ]
avg_salary <- mean(data_analysts_df$salary)

# Q10
numbers <- 1:20
avg_num <- mean(numbers)
squared_num <- numbers^2
highest_val <- max(squared_num)



#--------------------------- CHAPTER 4 ----------------------------------------#
# Q1
used_cars <- read.csv("files/datasets/used_car_price.csv")

max_seats <- max(used_cars$seats)
min_seats <- min(used_cars$seats)

# Q2
mileage_var <- var(used_cars$kms_driven)
mileage_sd <- sd(used_cars$kms_driven)

# Q3
skewness <- e1071::skewness(used_cars$kms_driven)
is_skewed <- "positively skewed"

# Q4
corr_seats_kms <- cor(used_cars$seats, used_cars$kms_driven)
is_correlated <- "not correlated"

# Q5
avocados <- read.csv("files/datasets/avocado_2015_2023.csv")

skewness_prices <- e1071::skewness(avocados$AveragePrice)
is_skewed <- "positively skewed"

# Q6
volume_range <- range(avocados$TotalVolume)

# Q7
tot_bags_sd <- sd(avocados$TotalBags)
tot_bags_var <- var(avocados$TotalBags)

# Q8
xl_bags_iqr <- IQR(avocados$XLargeBags, na.rm = T)
xl_bags_median <- median(avocados$XLargeBags, na.rm = T)
xl_bags_avg <- mean(avocados$XLargeBags, na.rm = T)

# Q9
starbucks <- read.csv("files/datasets/starbucks.csv")

cafe_latte <- starbucks[starbucks$Beverage == "Caffè Latte", ]
latte_avg <- mean(cafe_latte$Calories)

# Q10
classic_expresso <- starbucks[starbucks$Beverage_category == "Classic Espresso Drinks", ]
total_fat_sd <- sd(classic_expresso$Total.Fat..g.)



#-------------------- CHAPTER 5 -----------------------------------------------#
# Q1
library(ggplot2)

CO2 <- datasets::CO2
base_viz1 <- hist(CO2$conc,
                  main = "Distribution of Concentration Levels",
                  xlab = "Concentration")

gg_plot1 <- ggplot(CO2, aes(x = conc)) +
  geom_histogram(binwidth = 5) +
  ggtitle("Distribution of Concentration Levels") +
  xlab("Concentration")

# Q2
base_boxplot <- boxplot(uptake ~ Type,
                        data = CO2,
                        main = "Distribution of Uptake by Type",
                        xlab = "Type",
                        ylab = "Uptake")

gg_boxplot <- ggplot(CO2, aes(x = Type, y = uptake)) +
  geom_boxplot() +
  ggtitle("Distribution of Uptake by Type") +
  xlab("Type") +
  ylab("Uptake")

# Q3
base_bar <- barplot(t(as.matrix(CO2$conc)),
                    beside = TRUE,
                    main = "Concentration Levels by Plant",
                    xlab = "Plant",
                    col = rainbow(nrow(CO2)))

gg_bar <- ggplot(CO2, aes(x = Plant, y = conc, fill = Plant)) +
  geom_bar(stat = "identity") +
  ggtitle("Concentration Levels by Plant") +
  xlab("Plant") +
  ylab("Concentration")

# Q4
base_scatterplot <- plot(CO2$conc, CO2$uptake,
                         main = "Scatterplot: Concentration vs Uptake",
                         xlab = "Concentration",
                         ylab = "Uptake")

gg_scatterplot <- ggplot(CO2, aes(x = conc, y = uptake)) +
  geom_point() +
  ggtitle("Scatterplot: Concentration vs Uptake") +
  xlab("Concentration") +
  ylab("Uptake")

# Q5
iris <- datasets::iris
base_viz2 <- hist(iris$Sepal.Length,
                  main = "Distribution of Sepal Length",
                  xlab = "Sepal Length")

gg_plot2 <- ggplot(iris, aes(x = Sepal.Length)) +
  geom_histogram(binwidth = 0.2) +
  ggtitle("Distribution of Sepal Length") +
  xlab("Sepal Length")

# Q6
base_iris_boxplot <- boxplot(Petal.Length ~ Species,
                             data = iris,
                             main = "Distribution of Petal Lengths by Species",
                             xlab = "Species",
                             ylab = "Petal Length")

gg_iris_boxplot <- ggplot(iris, aes(x = Species, y = Petal.Length)) +
  geom_boxplot() +
  ggtitle("Distribution of Petal Lengths by Species") +
  xlab("Species") +
  ylab("Petal Length")

# Q7
mtcars <- datasets::mtcars
base_viz3 <- boxplot(mtcars$wt ~ mtcars$cyl,
                     main = "Distribution of Car Weights by Cylinders",
                     xlab = "Cylinders",
                     ylab = "Weight")

gg_plot3 <- ggplot(mtcars, aes(x = factor(cyl), y = wt)) +
  geom_boxplot() +
  ggtitle("Distribution of Car Weights by Cylinders") +
  xlab("Cylinders") +
  ylab("Weight")

# Q8
base_car_scatterplot <- plot(mtcars$wt, mtcars$mpg,
                             main = "Scatterplot: Car Weight vs Miles Per Gallon",
                             xlab = "Car Weight",
                             ylab = "Miles Per Gallon")

gg_car_scatterplot <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  ggtitle("Scatterplot: Car Weight vs Miles Per Gallon") +
  xlab("Car Weight") +
  ylab("Miles Per Gallon")

# Q9
airquality <- datasets::airquality

base_wind_bar <- barplot(airquality$Wind,
                         main = "Wind Speed for Each Day",
                         xlab = "Day",
                         ylab = "Wind Speed")

gg_wind_bar <- ggplot(airquality, aes(x = Day, y = Wind)) +
  geom_bar(stat = "identity") +
  ggtitle("Wind Speed for Each Day") +
  xlab("Day") +
  ylab("Wind Speed")

# Q10
base_iris_viz <- boxplot(Sepal.Width ~ Species,
                         data = iris,
                         main = "Distribution of Sepal Widths by Species",
                         xlab = "Species",
                         ylab = "Sepal Width")

gg_iris_plot <- ggplot(iris, aes(x = Species, y = Sepal.Width)) +
  geom_boxplot() +
  ggtitle("Distribution of Sepal Widths by Species") +
  xlab("Species") +
  ylab("Sepal Width")



#--------------------- CHAPTER 6 ----------------------------------------------#
# Q1
check_even_odd <- function(number) {
  if (number %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}

# Q2
is_prime <- function(number) {
  if (number < 2) {
    return(FALSE)
  }
  for (i in 2:sqrt(number)) {
    if (number %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

# Q3
calculate_triangle_area <- function(base, height) {
  area <- 0.5 * base * height
  return(area)
}

# Q4
find_maximum <- function(num1, num2) {
  return(max(num1, num2))
}

# Q5
calculate_average <- function(vector) {
  return(mean(vector))
}

# Q6
is_palindrome <- function(str) {
  str <- tolower(gsub("[[:punct:][:space:]]", "", str))
  return(str == rev(str))
}

# Q7
calculate_factorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * calculate_factorial(n - 1))
  }
}

# Q8
is_positive <- function(number) {
  return(number > 0)
}

# Q9
is_leap_year <- function(year) {
  return((year %% 4 == 0 & year %% 100 != 0) | (year %% 400 == 0))
}

# Q10
reverse_vector <- function(vec) {
  return(rev(vec))
}



#--------------------------- CHAPTER 7 ----------------------------------------#
# Q1
fruits <- list("apple", "mango", "peach", "orange",
               "watermelon", "avocado", "pawpaw")

fruits_char_counts <- lapply(fruits, function(x) nchar(x))

# Q2
chickwts <- datasets::chickwts
feed_avg_weights <- tapply(chickwts$weight, chickwts$feed, mean)

# Q3
airquality <- datasets::airquality

airquality_long <- reshape(airquality,
                           varying = list(c("Ozone", "Solar.R", "Wind", "Temp")),
                           v.names = "Value",
                           direction = "long",
                           times = c("Ozone", "Solar.R", "Wind", "Temp"),
                           timevar = "Variable",
                           idvar = "Day",
                           new.row.names = 1:10000)

# Q4
sleep <- datasets::sleep
sleep_wide <- reshape(sleep,
                      idvar = "ID",
                      timevar = "group",
                      direction = "wide")

# Q5
mtcars <- datasets::mtcars
avg_mpg_by_cyl <- aggregate(mtcars$mpg, by = list(mtcars$cyl), FUN = mean)

# Q6
iris <- datasets::iris
avg_sepal_length_by_species <- aggregate(iris$Sepal.Length,
                                         by = list(iris$Species),
                                         FUN = mean)

# Q7
numeric_lists <- list(v1 = 25:32, v2 = 41:48, v3 = 7:14)
squared_values <- lapply(numeric_lists, function(x) x^2)

# Q8
age_lists <- list(v1 = c(17, 21, 3, 19, 50),
                  v2 = c(14, 50, 77, 16, 87),
                  v3 = c(37, 8, 90, 43, 60))

means <- sapply(age_lists, mean)

# Q9
mat <- matrix(c(1, 2, NA, 4, 5, 6, 7, NA, 9), ncol = 3)
column_means <- apply(mat, 2, function(x) mean(x, na.rm = TRUE))

# Q10
scores <- list(v1 = c(7, 8, 9), v2 = c(4, 5, 6), v3 = c(2, 3, 1))
other_cumulative_sums <- lapply(scores, cumsum)



#------------------------ CHAPTER 8 -------------------------------------------#
library(palmerpenguins)

# Q1
penguins_contingency_table <- table(penguins$species, penguins$island)

# Q2
penguins_xtabs_table <- xtabs(~ species + island, data = penguins)

# Q3
penguins_species_proportions <- prop.table(penguins_contingency_table,
                                           margin = 2)

# Q4
subset_data <- subset(mtcars, cyl %in% c(4, 6))
t_test_mpg_vs_cyl <- t.test(mpg ~ cyl, data = subset_data, var.equal = TRUE)

# Extract the p-value
t_test_mpg_vs_cyl_pvalue <- t_test_mpg_vs_cyl$p.value

# Q5
z_scores_body_mass <- scale(subset(penguins,
                                   species == "Chinstrap")$body_mass_g)

# Q6
z_scores_flipper_length <- scale(subset(penguins,
                                        species == "Adelie")$flipper_length_mm)

# Q7
transmission_table <- table(mtcars$am)

# Q8
iris_species_table <- table(iris$Species)

# Q9
penguin_cross_tab <- xtabs(~ species + island, data = penguins)

# Q10
electrics <- read.csv("files/datasets/ElectronicsData.csv")
discount_types <- table(electrics$Discount)


#------------------- CHAPTER 9 ------------------------------------------------#
# Perform linear regression
linear_model <- lm(mpg ~ ., data = mtcars)

# Extract confidence intervals
confidence_interval <- confint(linear_model)

# Generate summary of the linear regression model
model_summary <- summary(linear_model)

# Make predictions
predicted_mpg <- predict(linear_model)

#---------------------------- CHAPTER 10  -------------------------------------#
# Open ended analysis: Sample workflow
# Load necessary libraries

# Workflow:

# 1. Import the dataset into RStudio and inspect it
# world_pop <- read.csv("files/datasets/world_population_data.csv")
# View(world_pop)

# 2. Check the data types of each variable
# str(world_pop)

# 3. Summarize the dataset and create visualizations
# summary_stats <- summary(world_pop)
# print(summary_stats)

# Visualizations:
# - Example: Histogram for HDI
# hist(world_pop$HDI,
#   main = "Distribution of HDI",
#    xlab = "HDI")

# - Example: Scatter plot for HDI vs IMF's GDP forecast
# plot(world_pop$HDI, world_pop$IMF_GDP_Forecast,
#      main = "HDI vs IMF's GDP Forecast",
#      xlab = "HDI", ylab = "IMF's GDP Forecast")

# 4. Use lapply to convert some data types
# world_pop <- world_pop %>%
#   mutate(across(c("Year", "Population"), as.numeric),
#          Date = as.Date(Date, format = "%Y-%m-%d"))

# 6. Use linear regression to answer the question: Is HDI correlated with IMF's GDP forecast?
# linear_model <- lm(HDI ~ IMF_GDP_Forecast, data = world_pop)
# summary_linear_model <- summary(linear_model)
# Print(summary_linear_model)







