#. Create an R file named calculator.r that stimulates a simple calculator. It reads two
# numbers and an operator. If the operator is +, the sum is printed; if it is -, the
# difference is printed; if it is x, the multiplication is printed; if it is /, the quotient is
# printed.

num <- readline("Enter two numbers: ")
operator <- readline("Enter operator: ")

# Split the user input into a vector of two numbers
numbers <- as.numeric(strsplit(num, " ")[[1]])

r<-switch(
    operator,
    '+' = numbers[1] + numbers[2],
    '-' = numbers[1] - numbers[2],
    'x' = numbers[1] * numbers[2],
    '/' = numbers[1] / numbers[2]
)
cat(numbers[1], operator, numbers[2], "=", r)