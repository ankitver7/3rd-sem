# Create matrices A and B
A <- matrix (1:9, nrow = 3)
B <- matrix (9:1, nrow = 3)
# Display matrices A and B
cat ("Matrix A:\n")
print(A)
cat ("\nMatrix B:\n")
print(B)
# a) Transpose of the matrix
transpose_A <- t(A)
transpose_B <- t(B)
cat ("\nTranspose of Matrix A:\n")
print(transpose_A)
cat ("\nTranspose of Matrix B:\n")
print(transpose_B)
# b) Addition
addition_result <- A + B
cat ("\nAddition of Matrix A and Matrix B:\n")
print(addition_result)
# c) Subtraction
subtraction_result <- A - B
cat ("\nSubtraction of Matrix A and Matrix B:\n")
print(subtraction_result)
# d) Multiplication
multiplication_result <- A %*% B # Matrix multiplication
cat ("\nMultiplication of Matrix A and Matrix B:\n")
print(multiplication_result