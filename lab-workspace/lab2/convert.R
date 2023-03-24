# Create an R file named convert.r that used to convert inch to centimeters.
# Given 1 inch equals to 2.54 centimeters.
# Display the value of centimeters in two decimal places.
# Run the r file using terminal.

# Display a prompt to the user
cat("Enter the length in inches: \n")

# Read a line of text from the user
inch <- as.numeric(readline(prompt = ""))

# Convert inches to centimeters
cm <- inch * 2.54

# Display the result
cat(sprintf("%.2f inches = %.2f centimeters\n", inch, cm))