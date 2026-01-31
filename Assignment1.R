# Assignment1.R
# Purpose: Generate 1000 random points for ClassA and ClassB,
# plot distributions, add reference line, and report Welch Two Sample t-test results.

set.seed(123)
n <- 1000

# Generate data
ClassA <- rnorm(n, mean = 0, sd = 1)
ClassB <- rnorm(n, mean = 0.5, sd = 1)

# Density curves
dA <- density(ClassA)
dB <- density(ClassB)

# Reference (overall mean)
ref <- mean(c(ClassA, ClassB))

# Save plot to PDF
pdf("Assignment1.pdf", width = 8, height = 6)

ymax <- max(dA$y, dB$y)

plot(dA,
     col = "yellow",
     lwd = 3,
     main = "Distributions of ClassA and ClassB",
     xlab = "Value",
     ylab = "Density",
     ylim = c(0, ymax))

lines(dB, col = "black", lwd = 3)
abline(v = ref, col = "red", lwd = 3, lty = 2)

legend("topright",
       legend = c("ClassA", "ClassB", "Reference"),
       col = c("yellow", "black", "red"),
       lwd = 3,
       lty = c(1,1,2),
       bty = "n")

dev.off()

# Welch Two Sample t-test
cat("\n--- Welch Two Sample t-test Results ---\n")
t_result <- t.test(ClassA, ClassB)
print(t_result)

cat("\n--- Summary ---\n")
cat("Mean(ClassA) =", mean(ClassA), "\n")
cat("Mean(ClassB) =", mean(ClassB), "\n")
cat("Reference =", ref, "\n")
cat("P-value =", t_result$p.value, "\n")

