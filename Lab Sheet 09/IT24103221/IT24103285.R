setwd("C:\\Users\\Dell\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24103221")
set.seed(123)
sample_data <- rnorm(25, mean = 45, sd = 2)
print(sample_data)
t_test_result <- t.test(sample_data, mu = 46, alternative = "less")
print(t_test_result)
t_value <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_interval <- t_test_result$conf.int
cat("Test statistic (t):", t_value, "\n")
cat("P-value:", p_value, "\n")
cat("Confidence Interval:", conf_interval, "\n")