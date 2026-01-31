# Assignment 1
# Purpose: Generate 1000 random points for ClassA and ClassB,
# plot distributions, add reference line, and perform Welch t-test

set.seed(123)
n <- 1000

# Generate random data
ClassA <- rnorm(n, mean = 50, sd = 10)
ClassB <- rnorm(n, mean = 55, sd = 10)

# Save plot as PDF
pdf("Assignment1.pdf")

# Plot distributions
hist(ClassA,
     col = "yellow",
     xlim = range(c(ClassA, ClassB)),
     main = "Distribution of ClassA and ClassB",
     xlab = "Values")

hist(ClassB,
     col = "black",
     add = TRUE)

# Reference line (mean of both classes)
abline(v = mean(c(ClassA, ClassB)), col = "red", lwd = 2)

dev.off()

# Welch Two Sample t-test
t_test_result <- t.test(ClassA, ClassB)

# Print results
print(t_test_result)# Assignment 1
# Purpose: Generate 1000 random points for ClassA and ClassB,
# plot distributions, add reference line, and perform Welch t-test

set.seed(123)
n <- 1000

# Generate random data
ClassA <- rnorm(n, mean = 50, sd = 10)
ClassB <- rnorm(n, mean = 55, sd = 10)

# Save plot as PDF
pdf("Assignment1.pdf")

# Plot distributions
hist(ClassA,
     col = "yellow",
     xlim = range(c(ClassA, ClassB)),
     main = "Distribution of ClassA and ClassB",
     xlab = "Values")

hist(ClassB,
     col = "black",
     add = TRUE)

# Reference line (mean of both classes)
abline(v = mean(c(ClassA, ClassB)), col = "red", lwd = 2)

dev.off()

# Welch Two Sample t-test
t_test_result <- t.test(ClassA, ClassB)

# Print results
print(t_test_result)
# Assignment 1
# Purpose: Generate 1000 random points for ClassA and ClassB,
# plot distributions, add reference line, and perform Welch t-test

set.seed(123)
n <- 1000

# Generate random data
ClassA <- rnorm(n, mean = 50, sd = 10)
ClassB <- rnorm(n, mean = 55, sd = 10)

# Save plot as PDF
pdf("Assignment1.pdf")

# Plot distributions
hist(ClassA,
     col = "yellow",
     xlim = range(c(ClassA, ClassB)),
     main = "Distribution of ClassA and ClassB",
     xlab = "Values")

hist(ClassB,
     col = "black",
     add = TRUE)

# Reference line (mean of both classes)
abline(v = mean(c(ClassA, ClassB)), col = "red", lwd = 2)

dev.off()

# Welch Two Sample t-test
t_test_result <- t.test(ClassA, ClassB)

# Print results
print(t_test_result)

