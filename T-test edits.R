Last login: Fri Jan 30 22:42:48 on ttys004
(base) dblass@destinys-MacBook-Air-3 ~ % R

R version 4.5.2 (2025-10-31) -- "[Not] Part in a Rumble"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> # Generate dummy dataset
> x <- rnorm(10)
> y <- rnorm(10)
> 
> # Plot the variables x and y using a density plot
> pts <- seq(-4.5, 4.5, length = 100)
> 
> # Plot T-distribution with dashed line
> plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
+      main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
+      lty = 2)
> 
> # Add density lines for x and y
> lines(density(x), col = 'green')
> lines(density(y), col = 'blue')
> # Save plot as PDF
> pdf("T-test edits.pdf")   # This will create a PDF called T-test edits.pdf
> 
> # Your existing plotting code
> pts <- seq(-4.5, 4.5, length = 100)
> plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
+      main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
+      lty = 2)
> lines(density(x), col = 'green')
> lines(density(y), col = 'blue')
> 
> # Close the PDF (saves it)
> dev.off()
quartz 
     2 
> 
> list.files()
 [1] "Applications"                  "Assignment1.pdf"              
 [3] "Assignment1.R"                 "Assignment1.R.save"           
 [5] "Cursor code beginner"          "density_plot.png"             
 [7] "Desktop"                       "Documents"                    
 [9] "Downloads"                     "Library"                      
[11] "Movies"                        "Music"                        
[13] "OneDrive - Claflin University" "OverlySeeded"                 
[15] "Pictures"                      "Public"                       
[17] "PycharmProjects"               "T-test edits 2.pdf"           
[19] "T-test edits 2.png"            "T-test edits 2.R"             
[21] "T-test edits.pdf"             
> file.edit("T-test edits.R")
> # Save plot as PDF
> pdf("T-test edits.pdf")   # creates PDF
> 
> pts <- seq(-4.5, 4.5, length = 100)
> 
> # Plot T-distribution with dashed line
> plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
+      main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
+      lty = 2)
> 
> # Add density lines
> lines(density(x), col = 'green')
> lines(density(y), col = 'blue')
> 
> # Close PDF
> dev.off()
quartz 
     2 
> list.files()
 [1] "Applications"                  "Assignment1.pdf"              
 [3] "Assignment1.R"                 "Assignment1.R.save"           
 [5] "Cursor code beginner"          "density_plot.png"             
 [7] "Desktop"                       "Documents"                    
 [9] "Downloads"                     "Library"                      
[11] "Movies"                        "Music"                        
[13] "OneDrive - Claflin University" "OverlySeeded"                 
[15] "Pictures"                      "Public"                       
[17] "PycharmProjects"               "T-test edits 2.pdf"           
[19] "T-test edits 2.png"            "T-test edits 2.R"             
[21] "T-test edits.pdf"              "T-test edits.R"               
> 'q()'
[1] "q()"
> cd "/Users/dblass/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1"
Error: unexpected string constant in "cd "/Users/dblass/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1""
> 'q()'
[1] "q()"
> ls
function (name, pos = -1L, envir = as.environment(pos), all.names = FALSE, 
    pattern, sorted = TRUE) 
{
    if (!missing(name)) {
        pos <- tryCatch(name, error = function(e) e)
        if (inherits(pos, "error")) {
            name <- substitute(name)
            if (!is.character(name)) 
                name <- deparse(name)
            warning(gettextf("%s converted to character string", 
                sQuote(name)), domain = NA)
            pos <- name
        }
    }
    all.names <- .Internal(ls(envir, all.names, sorted))
    if (!missing(pattern)) {
        if ((ll <- length(grep("[", pattern, fixed = TRUE))) && 
            ll != length(grep("]", pattern, fixed = TRUE))) {
            if (pattern == "[") {
                pattern <- "\\["
                warning("replaced regular expression pattern '[' by  '\\\\['")
            }
            else if (length(grep("[^\\\\]\\[<-", pattern))) {
                pattern <- sub("\\[<-", "\\\\\\[<-", pattern)
                warning("replaced '[<-' by '\\\\[<-' in regular expression pattern")
            }
        }
        grep(pattern, all.names, value = TRUE)
    }
    else all.names
}
<bytecode: 0x13005ad68>
<environment: namespace:base>
> q()
Save workspace image? [y/n/c]: y
(base) dblass@destinys-MacBook-Air-3 ~ % R

R version 4.5.2 (2025-10-31) -- "[Not] Part in a Rumble"
Copyright (C) 2025 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> # Set your assignment folder
> setwd("/Users/dblass/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1")
> 
> # Confirm
> getwd()
[1] "/Users/dblass/Documents/STAT401/ASSIGNMENTS/ASSIGNMENT 1"
> list.files()
[1] "Assignment1.pdf"    "Assignment1.R"      "Documents"         
[4] "T-test edits.2.pdf" "T-test edits.2.R"  
> # Generate dummy data
> x <- rnorm(10)
> y <- rnorm(10)
> 
> # Save plot as PDF
> pdf("T-test edits.pdf")   # Creates PDF file
> 
> pts <- seq(-4.5, 4.5, length = 100)
> 
> # Plot T-distribution with dashed line
> plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
+      main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
+      lty = 2)
> 
> # Add density lines
> lines(density(x), col = 'green')
> lines(density(y), col = 'blue')
> 
> # Close PDF (save)
> dev.off()
null device 
          1 
> file.edit(T-test edits.R")
Error: unexpected symbol in "file.edit(T-test edits.R"
> file.edit(
+ 
+ file.edit("T-test edits.R")
+ file.edit("T-test edits.R")
Error: unexpected symbol in:
"file.edit("T-test edits.R")
file.edit"
> file.edit("T-test edits.R")


# Generate dummy dataset
x <- rnorm(10)
y <- rnorm(10)

# Save plot as PDF
pdf("T-test edits.pdf")   # Creates PDF file in your working directory

# Create points for T-distribution
pts <- seq(-4.5, 4.5, length = 100)

# Plot T-distribution with dashed red line
plot(pts, dt(pts, df = 9), col = 'red', type = 'l',
     main = "T Test", xlab = "Sequence", ylab = "Density of X and Y",
     lty = 2)

# Add density curves for x and y
lines(density(x), col = 'green')
lines(density(y), col = 'blue')

# Close the PDF device to save the file
dev.off()


