#Author: Blassingame, Date: 02/04/2026, Purpose: Correlation test

#Load the library ggpubr
library("ggpubr")

#Load dummy datasets for testing
my_data<-mtcars

#Hypothesis:Weight of the car is inversely proportional to the miles per gallon it travels

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, 
cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab 
= "Weight (1000 lbs)")

#Apply correlation test function
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res



Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

#Accept the alternate hypothesis!!


#Set the working directory

setwd("/Users/dblass")

#Read data.csv file in R

data<-read.csv("data.csv",header=TRUE)

