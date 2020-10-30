library(tidyverse)


# Exercise 1 Write a for loop that iterates over the numbers 1 to 7
# and prints the cube of each number using print().

for (i in 1:7) {
  print(i^3)
}


# Exercise 2 Write a for loop that iterates over the column names of the inbuilt iris dataset and print 
# each together with the number of characters in the column name in parenthesis. Example output: Sepal.Length (12). 
# Use the following functions print(), paste0() and nchar()

for (i in names(iris)) {
  print(paste0(i," ","(",nchar(i),")"))
}

# Exercise 3 Write a while loop that prints out standard random normal numbers (use rnorm()) 
# but stops (breaks) if you get a number bigger than 1.

x <- 0
while (TRUE) {
  if (x < 1) {
    x <- rnorm(1)
    print(x)
    } else {
      break
    }
}

# Exercise 4 Using next adapt the loop from last exercise so that doesn’t print negative numbers.

y <- 0
while (TRUE) {
  if (y < 1) {
    y <- rnorm(1)
    if (y < 0) {
      next
    } else {
        print(y)
      }
  } else {
    break
    }
}


# Exercise 5 Using a for loop simulate the flip a coin twenty times, keeping track of the 
# individual outcomes (1 = heads, 0 = tails) in a vector that you preallocte.

z <- double(length = 20)

for (i in 1:20) {
  z[i] <- rbinom(n = 1, size = 1, prob = 0.5)
}

sample(c(0,1), 1, replace = TRUE)


# Exercise 6 Use a while loop to investigate the number of terms required before the product
# 1⋅2⋅3⋅4⋅… reaches above 10 million.

maxiter <- 10000000
pr_i <- 1
j <- 0

while (pr_i < maxiter) {
  j <- j + 1
  pr_i <- pr_i*j
}



# Exercise 7
# Drunk people theory.
# You need to go home which is 1500m far from you right now.
# In one step you can go 1m closer or 0.9m back (you are drunk)
# How many steps you need to reach home?
# Plot your result.
# Simulate it 10 times


goal <- 1500
s <- 0
num_s <- 0
l <- NULL

while (s < goal) {
  num_s <- num_s + 1
  l <- c(l,sample(c(1,-0.9), 1))
  s <- s+l[num_s]
}
if (s > goal) {
  print(paste0("It took me ",num_s," to get home." ))
}


# Test 1

df_1 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_1, aes(x = step, y = position))+
  geom_line()

# Test 2

df_2 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_2, aes(x = step, y = position))+
  geom_line()

# Test 3

df_3 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_3, aes(x = step, y = position))+
  geom_line()

# Test 4

df_4 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_4, aes(x = step, y = position))+
  geom_line()

# Test 5

df_5 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_5, aes(x = step, y = position))+
  geom_line()

# Test 6

df_6 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_6, aes(x = step, y = position))+
  geom_line()

# Test 7

df_7 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_7, aes(x = step, y = position))+
  geom_line()

# Test 8

df_8 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_8, aes(x = step, y = position))+
  geom_line()

# Test 9

df_9 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_9, aes(x = step, y = position))+
  geom_line()

# Test 10

df_10 <- data.frame('step'= 1:num_s, 'position' =cumsum(l))

ggplot(df_10, aes(x = step, y = position))+
  geom_line()


# Exercise 8 Implement a multiplication game. A while loop that gives the user two random numbers 
# from 2 to 12 and asks the user to multiply them. Only exit the loop after five correct answers.
# Try using as.integer(readline()) instead of scan() this time.

rm(correct_answers)
rm(total_correct)
numbers <- double(length = 2)
correct_answers <- double()

while (length(correct_answers) < 5) {
  numbers <- sample(c(2:12), 2)
  print(numbers)
  total <- as.integer(readline())
  total_correct <- numbers[1]*numbers[2]
  if (total==total_correct) {
    correct_answers <- c(correct_answers, 1)
  }
}

if (length(correct_answers) = 5) {
  print('You made it!!!')}

