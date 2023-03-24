# num1 <- as.integer(readline("Enter 1st number: "))
# num2 <- as.integer(readline("Enter 2nd number: "))
# 
# total <- num1 + num2
# 
# cat("Total: ", total)

args <- commandArgs(trailingOnly = TRUE)
num1 <- as.integer(args[1])
num2 <- as.integer(args[2])

# Calculate the total
total <- num1 + num2

# Print the result
cat("The total of", num1, "and", num2, "is", total)