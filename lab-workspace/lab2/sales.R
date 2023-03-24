# Create an R file named sales.r that get the price of item from the user and then
# display the new discount price for the item based on discounts of 50%, 30% and 10%.
# Run the r file using terminal.

# Display a prompt to the user
cat("Enter the price of items: \n")

# Read a line of text from the user
price <- as.numeric(readline(prompt = ""))

# Convert inches to centimeters
discounts <- c(0.5, 0.3, 0.1)
dis_pri <- price * (1 - discounts)

# Display the result
for (i in 1:length(discounts)) {
  cat(sprintf("The price of item after %.0f%% discount is %.0f\n", discounts[i] * 100, dis_pri[i]))
}