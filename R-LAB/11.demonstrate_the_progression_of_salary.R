  years_of_experience <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
  salaries <- c(30000, 35000, 40000, 45000, 50000, 55000, 60000, 65000, 70000,
                75000)
  data <- data.frame(years_of_experience, salaries)
  model <- lm(salaries ~ years_of_experience, data=data)
  intercept <- coef(model)[1]
  slope <- coef(model)[2]
  plot(data$years_of_experience, data$salaries, main="Salary vs. Years of Experience", 
        xlab="Years of Experience", ylab="Salary", pch=16, col="blue")
  abline(model, col="red")
  
  png(filename = "salary_vs_experience_plot.png")
  plot(data$years_of_experience, data$salaries, main="Salary vs. Years of Experience", 
          xlab="Years of Experience", ylab="Salary", pch=16, col="blue")
  abline(model, col="red")
  dev.off()
  predicted_salaries <- predict(model)
  plot(data$salaries, predicted_salaries, main="Actual vs. Predicted Salaries",
          xlab="Actual Salaries", ylab="Predicted Salaries", pch=16, col="green")
  abline(0, 1, col="red")
  
  png(filename = "actual_vs_predicted_plot.png")
  plot(data$salaries, predicted_salaries, main="Actual vs. Predicted Salaries",
        xlab="Actual Salaries", ylab="Predicted Salaries", pch=16, col="green")
  abline(0, 1, col="red")
  dev.off()
  cat("Intercept:", intercept, "\n")
  cat("Slope:", slope, "\n")
  data$predicted_salaries <- predicted_salaries
  write.csv(data, file = "salary_data_with_predictions.csv", row.names = FALSE