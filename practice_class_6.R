#Funtion 1

function1 <- function(x) {
  return(x*x+1)
}

function1(5)

# Exercise 1 Write a function that calculates number a to the power of b,
# but let b have a default value of 2

ex_1 <- function(a,b=2) {
  return(a^b)
}

ex_1(3)

# Exercise 2 Write a function that changes the value of pi in the R global environment to whatever 
# you specify as the argument. Note: it is not recommended to re-define the value of “pi” in 
# a real-life R program.


ex_2 <- function(x) {
  (pi <<- x)
}

ex_2(3.14)


# Exercise 3 Create a function which return a data frame like the example. 
# The input of the function will be the number of rows of the data frame.


ex_4 <- function(rows) {
  weight <- sample(x = 50:100, size = rows, replace = TRUE)
  height <- sample(x = 130:200, size = rows, replace = TRUE)
  class <- sample(x = c('A','B','C','D'), size = rows, replace = TRUE)
  birthday <- sample(x = seq(as.Date('1960/01/01'), as.Date('2020/10/31'), by='day'), size = rows, replace = TRUE)
  age_days <- as.numeric(Sys.Date()-birthday)
  age_years <- round(age_days/365, 0)
  
  random_df <- data.frame(weight,height,class,birthday,age_days,age_years)
  return(random_df)
}

ex_4(10)



# Exercise 4 Create a function which print a random walk just like in previous class 
# and return with the dataframe.

library(tidyverse)

ex_4 <- function(forward=1, backwards=-0.9, distance=100) {
  numb_steps <- 0
  len <- NULL
  dist_cov <- 0
  
  while (dist_cov < distance) {
    numb_steps <- numb_steps + 1
    len <- c(len, sample(x = c(forward, backwards),size = 1, replace = TRUE))
    dist_cov <- dist_cov + len[numb_steps]
  }
  
  df_distance <- data.frame('step'= 1:numb_steps, 'position' =cumsum(len))
  plot(ggplot(df_distance, aes(x = step, y = position))+
    geom_line())
  print(paste0('I need ', numb_steps, ' to get home!'))
  return(df_distance)
}
 

df_exp <- ex_4()

