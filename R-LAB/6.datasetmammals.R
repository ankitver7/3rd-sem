#install.packages("MASS")
#library(MASS)
#data(mammals)
#print(mammals)

#a)Find the Pearson and Spearman correlation coefficients. Are they similar?
  pearson_corr <- cor(mammals$body, mammals$brain, method = "pearson")
  cat("Pearson correlation coefficient:", pearson_corr, "\n")
  spearman_corr <- cor(mammals$body, mammals$brain, method = "spearman")
  cat("Spearman correlation coefficient:", spearman_corr, "\n")
#  b) Plot the data using the plot command.
  plot(mammals$body, mammals$brain, 
      xlab = "Body Weight", ylab = "Brain Weight", 
      main = "Body Weight vs. Brain Weight")
# c)Plot the logarithm (log) of each variable and see if that makes a difference.
  log_bodywt <- log(mammals$body)
  log_brainwt <- log(mammals$brain)
  
  # Plot the logarithm of each variable
   plot(log_bodywt, log_brainwt, 
           xlab = "Log Body Weight", ylab = "Log Brain Weight", 
           main = "Log Body Weight vs. Log Brain Weight")
   
   