# Set working directory
setwd("C:\\Users\\Dell\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24103221-Lab 08")

# Read dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

weights <- data$Weight.kg.

# 1. Population mean and variance
pop_mean <- mean(weights)
pop_var  <- var(weights)

print(paste("Population Mean =", round(pop_mean, 3)))
print(paste("Population Variance =", round(pop_var, 3)))

# 2. 30 random samples of size 5 (with replacement)
num_samples <- 30
sample_size <- 5

sample_means <- numeric(num_samples)
sample_vars  <- numeric(num_samples)

set.seed(123)

for(i in 1:num_samples){
  samp <- sample(weights, size = sample_size, replace = TRUE)
  sample_means[i] <- mean(samp)
  sample_vars[i]  <- var(samp)
}

results <- data.frame(
  Sample = 1:num_samples,
  Mean   = round(sample_means, 3),
  Variance = round(sample_vars, 3)
)

print(results)

# 3. Mean and variance of sample means
mean_of_means <- mean(sample_means)
var_of_means  <- var(sample_means)

print(paste("Mean of the Sample Means =", round(mean_of_means, 3)))
print(paste("Variance of Sample Means =", round(var_of_means, 3)))
