# Load the mtcars dataset
data(mtcars)

#a) What is the total number of observations and variables in the dataset? 
  total_observations <- nrow(mtcars)
  total_variables <- ncol(mtcars)
  cat("Total number of observations:", total_observations, "\n")
  cat("Total number of variables:", total_variables, "\n\n")

  #b) Find the car with the largest hp and the least hp using suitable functions 
  car_max_hp <- mtcars[which.max(mtcars$hp), "hp"]
  car_min_hp <- mtcars[which.min(mtcars$hp), "hp"]
  cat("Car with the largest hp:", car_max_hp, "\n")
  cat("Car with the least hp:", car_min_hp, "\n\n")
#c) Plot histogram / density for each variable and determine whether continuous variables are normally distributed or not. If not, what is their skewness? 
  par(mfrow=c(4, 3), mar=c(2, 2, 1, 1))
  for (i in 1:total_variables) {
    hist(mtcars[,i], main=names(mtcars)[i], col="skyblue", border="white",
         xlab="", ylab="", xlim=c(min(mtcars[,i]), max(mtcars[,i])))
  lines(density(mtcars[,i]), col="red", lwd=2)
  }

#d) What is the average difference of gross horse power(hp) between automobiles with 3 and 4 number of cylinders(cyl)? Also determine the difference in their standard deviations. 
  hp_diff_3_vs_4 <- mean(mtcars[mtcars$cyl == 3, "hp"]) - mean(mtcars[mtcars$cyl == 4, "hp"])
  sd_diff_3_vs_4 <- sd(mtcars[mtcars$cyl == 3, "hp"]) - sd(mtcars[mtcars$cyl == 4, "hp"])
  cat("Average difference of hp between 3 and 4 cylinders:", hp_diff_3_vs_4, "\n")
  cat("Difference in their standard deviations:", sd_diff_3_vs_4, "\n\n")
  
#e) Which pair of variables has the highest Pearson correlation?
    cor_matrix <- cor(mtcars)
    cor_max <- which(cor_matrix == max(cor_matrix[upper.tri(cor_matrix)], na.rm = TRUE),
                     arr.ind= TRUE)
    var1 <- rownames(cor_matrix)[cor_max[1,1]]
    var2 <- colnames(cor_matrix)[cor_max[1,2]]
    correlation <- cor_matrix[cor_max]
    cat("Pair of variables with the highest Pearson correlation:", var1, "and", var2, "\n")
    cat("Correlation coefficient:", correlation, "\n")
  
