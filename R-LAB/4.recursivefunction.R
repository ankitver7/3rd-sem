# Recursive function to calculate factorial
factorial <- function(n) {
  if (n == 0 || n == 1) {
    return (1)
  } else {
    return (n * factorial (n - 1))
  }
}
# Input: Get a number from the user
num <- as.integer (readline ("Enter a non-negative integer to find its factorial: "))
# Check if the input is a non-negative integer
if (num < 0) {
  cat ("Please enter a non-negative integer.\n")
} else {
  # Call the recursive function to calculate factorial
  result <- factorial(num)
  
  # Display the result
  cat ("Factorial of", num, "is:", result, "\n")
}

#or

# Recursive function to calculate factorial
factorial <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial(n - 1))
  }
}

# Input: Get a number from the user
num_input <- 5
result<-factorial(num_input)
cat("the factorial of ",num_input,"is",result,"\n")
