#data()
#data("airquality")
#print(airquality)

#a) Assigning names, using the air quality data set
names(airquality) <- c("Day", "Month", "Ozone", "Solar.R", "Wind", "Temp")

#b)Change colors of the Histogram
hist(airquality$Ozone, col = "skyblue", main = "Histogram of Ozone Levels")

#c)Remove Axis and Add labels to Histogram
hist(airquality$Ozone, col = "lightgreen", main = "Histogram of Ozone Levels",
xlab = "Ozone 
Levels", ylab = "Frequency", axes = FALSE)
axis(side = 1, at = seq(0, 200, by = 25), labels = seq(0, 200, by = 25))
axis(side = 2)
box()

#d)Change Axis limits of a Histogram
hist(airquality$Ozone, col = "pink", main = "Histogram of Ozone Levels",
     xlim = c(0, 150), ylim = c(0, 40), xlab = "Ozone Levels",
     ylab = "Frequency")

#e)Add Density curve to the histogram
hist(airquality$Ozone, col = "lightblue", main = "Histogram of Ozone Levels",
xlab = "Ozone 
Levels", ylab = "Frequency", prob = TRUE)
lines(density(airquality$Ozone), col = "red", lwd = 2)