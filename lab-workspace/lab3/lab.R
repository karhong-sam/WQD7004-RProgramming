data <- LETTERS[sample(1:6, 50, replace = TRUE)]
# data <- is.factor(data)
data_f <- factor(data)
print(data_f)
tb <- table(data_f)
print(tb)