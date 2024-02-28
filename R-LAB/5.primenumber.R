# Function to find all prime numbers up to a specified number using Sieve of Eratosthenes algorithm
sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n) 	# Initialize all numbers as prime
  primes[1] <- FALSE 	# 1 is not prime
  
  # Iterate through numbers from 2 to sqrt(n)
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      # Mark all multiples of i as not prime
      primes[i * i:n] <- FALSE
    }
  } 
  # Return prime numbers
  return(which(primes))
}
# Example usage:
n <- 50 	# Specify the number up to which you want to find prime numbers
prime_numbers <- sieve_of_eratosthenes(n)
print(prime_numbers)
