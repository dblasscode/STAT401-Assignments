file.edit("T-test edits.2.R")
# Generate dummy dataset
x <- rnorm(10)
y <- rnorm(10)

file.edit("T-test edits.2.R")
# Save plot as PDF
# Generate dummy dataset
x <- rnorm(10)
y <- rnorm(10)

# Save plot as PDF
pdf("T-test edits.2.pdf")

pts <- seq(-4.5, 4.5, length = 100)

# Plot with T-distribution and density lines
plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
     main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
     lty = 2, ylim = c(0, 0.8))

lines(density(x), col = 'green')
lines(density(y), col = 'blue')
list.files()

# Close the PDF
dev.off()
pdf("T-test edits.2.pdf")
getwd()
setwd("~/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1")
getwd()  # confirm it


pts <- seq(-4.5, 4.5, length = 100)

# Plot with T-distribution and density lines
plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
     main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
     lty = 2, ylim = c(0, 0.8))

lines(density(x), col = 'green')
lines(density(y), col = 'blue')

dev.off()
setwd("~/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1")
getwd()  # confirm it


