#a)Assign different types of values to variables:
  # Double
  double_var <- 3.14
  cat("Double Variable:", double_var, "\tType:", typeof(double_var), "\n")
  # Integer
  int_var <- 42L
  cat("Integer Variable:", int_var, "\tType:", typeof(int_var), "\n")
  # Logical
  logical_var <- TRUE
  cat("Logical Variable:", logical_var, "\tType:", typeof(logical_var), "\n")
  # Complex
  complex_var <- 1 + 2i
  cat("Complex Variable:", complex_var, "\tType:", typeof(complex_var), "\n")
  # Character
  character_var <- "Hello, R!"
  cat("Character Variable:", character_var, "\tType:", typeof(character_var), "\n")
#b) Arithmetic and Logical Operations:
  # Arithmetic Operations
  a <- 10
  b <- 5
  sum_result <- a + b
  diff_result <- a - b
  prod_result <- a * b
  div_result <- a / b
  cat("Sum:", sum_result, "\n")
  cat("Difference:", diff_result, "\n")
  cat("Product:", prod_result, "\n")
  cat("Quotient:", div_result, "\n")
  # Logical Operations
  logical_and <- TRUE & FALSE
  logical_or <- TRUE | FALSE
  logical_not <- !TRUE
  cat("Logical AND:", logical_and, "\n")
  cat("Logical OR:", logical_or, "\n")
  cat("Logical NOT:", logical_not, "\n")
#c) Generation of Sequences and Creation of Vectors:
  # Sequence generation
  sequence <- seq(1, 10, by = 2)
  cat("Sequence:", sequence, "\n")
  # Creation of vectors
  numeric_vector <- c(1.5, 2.5, 3.5)
  logical_vector <- c(TRUE, FALSE, TRUE)
  character_vector <- c("apple", "banana", "orange")
  cat("Numeric Vector:", numeric_vector, "\n")
  cat("Logical Vector:", logical_vector, "\n")
  cat("Character Vector:", character_vector, "\n")
#d) Creation of Matrices:
  # Creation of matrices
  matrix_a <- matrix(1:6, nrow = 2, ncol = 3)
  cat("Matrix A:\n", matrix_a, "\n")
#e) Creation of Matrices from Vectors using Binding Function:
  # Binding vectors into a matrix
  vector_x <- c(1, 2, 3)
  vector_y <- c(4, 5, 6)
  matrix_b <- rbind(vector_x, vector_y)
  cat("Matrix B:\n", matrix_b, "\n")
#f) Element Extraction from Vectors, Matrices, and Arrays:
  # Element extraction
  element_x <- vector_x[2]
  element_matrix_a <- matrix_a[1, 2]
  cat("Element X:", element_x, "\n")
  cat("Element in Matrix A:", element_matrix_a, "\n")