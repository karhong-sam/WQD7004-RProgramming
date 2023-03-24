# Create a vector named num with four elements (2, 0, 4, 6)
num <- c(2, 0, 4, 6)
num[3]
num[2:4]
length(num)

# Create a vector named q3 that add two numbers 3 and 5.
# After that, add 100 to this vector and display the output.
q3 <- print(c(3, 5))
q3 <- print(c(q3, 100))

# Create a vector named animal that consists of cat, tiger, lion and elephant.
# Display the vector. After that, append monkey and cow to the vector
# and display the output
animal <- print(c("cat", "tiger", "lion", "elephant"))
animal <- print(c(animal, "monkey", "cow"))

# Create two vectors named n1 and n2 of integers type (any number)
# and of length 3. Then, add and multiply the two vectors.
n1 <- c(2, 4, 7)
n2 <- c(6, 3, 1)
n1n2_add <- print(n1 + n2)
n1n2_mul <- print(n1 * n2)

# Create a vector x of size 4 with any value from 1-10
x <- c(2, 4, 6, 8)
ans_x1 <- print(list(sum = sum(x), mean = round(mean(x), 2), min = min(x), max = max(x)))

x <- c(x, 12, 14, 16)
ans_x2 <- print(list(sum = sum(x), mean = round(mean(x), 2), min = min(x), max = max(x)))

ans_x3 <- print(list(first2Values = head(x, 2), last2Values = tail(x, 2)))

s1 <- sort(x)
s2 <- sort(x, decreasing = TRUE)
s3 <- rev(x)
ans_x4 <- print(list(s1 = s1, s2 = s2, s3 = s3))

ans_x5 <- print(sort(x)[length(x) - 1])
