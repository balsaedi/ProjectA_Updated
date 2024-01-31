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
