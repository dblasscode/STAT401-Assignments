Author: Destiny Blassingame Date: 4/6/2026 Purpose: Regression test

# Create 2 dummy variables, say x as a dependent and y being an independent variable
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 

y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 

# Create a regression model using function lm
relation <- lm(x~y) 
# Prints the built model
print(relation) 
Call:
  lm(formula = x ~ y)

Coefficients:
  (Intercept)            y  
61.380        1.415  

# Predict value of x with an unknown/test value of y
a <- data.frame(x=170)
result <-predict(relation,a)
print(result)
1        
150.5448  

