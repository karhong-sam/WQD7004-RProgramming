# Create a list using R with the following values g1=1:10, g2="R Programming", g3=
# "HTML". Then, count the number of objects in the list. After that, get the length of
# the first two vectors of the given list.

lista<-list(g1=c(1:10),g2="R-Programming",g3="HTML")
print(lista)
print(length(lista))
print(length(lista$g1))
print(length(lista$g2))

# Find all elements of a list1 that are not given in list2 using R. Given list1 consists of
# "x", "y", "z" and list2 consists of "x", "y", "z", "X", "Y", "Z". (You can use the
# setdiff())

list1<-c("x", "y", "z")
list2<-c("x", "y", "z", "X", "Y", "Z")
setdiff(list2,list1)

# Create a list using the following values ("G022", "G003", "G013", "G007", "G012"
# and then list down the number of items in the list. Then, display the second element in
# the list. After that, add a new item "G018"to the list and then display the list in
# ascending order.
listc<-c("G022", "G003", "G013", "G007", "G012")
print(length(listc))
print(listc[[2]])
print(sort(listc<-c(listc, "G018")))

# Create four vectors a, b, c, and d with 3 integers. Combine all the vectors to become a
# 4x3 matrix. Add a vector with sequence of number from 1 to 4 to the matrix by row.
vector_a<-sample(1:10,3)
vector_b<-sample(1:10,3)
vector_c<-sample(1:10,3)
vector_d<-sample(1:10,3)
print(mat<-rbind(vector_a, vector_b, vector_c, vector_d))
vector_e<-c(1:4)
mat<-t(mat)
print(mat<-rbind(mat,vector_e))

# A and B is a 3x4 matrix. Create an R Script to multiply matrix A and B to get the 3x3
# dimension.
print(mat_a<-matrix(sample.int(100,12), nrow = 3, ncol = 4))
print(mat_b<-matrix(sample.int(100,12), nrow = 3, ncol = 4))
print(mat_a%*%t(mat_b))

# Create a matrix with 10 rows and 2 columns, extract a sub-matrix from original
# matrix which includes the last 5 rows.
print(mat_f<-matrix(sample.int(100,20), 10, 2))
print(tail(mat_f),5)

# A square matrix A is said to be invertible if there exists a matrix B such that AB =
# BA = I. Generate a 2x2 matrix A as below. Then, compute B.
print(matrix_A<-matrix(c(2,4,2,2), 2))
print(solve(matrix_A))

# With regards to the mtcars dataset:
# - retrieve the number of columns
# - retrieve the number of rows
# - retrieve data value from row 3 and column 5
# - retrieve data value from row 3 and column 5 using the names
# - retrieve data of a row (Volvo 142E)
# - retrieve data of column mpg
# - retrieve data of column hp and qsec

View(mtcars)
print(ncol(mtcars))
print(nrow(mtcars))
print(mtcars[3,5])
print(mtcars[3,"drat"])
print(mtcars[rownames(mtcars) == "Volvo 142E",])
print(mtcars[, "mpg"])
print(mtcars[, c("hp", "qsec")])

# Create a DataFrame using the following data. SK020 is the ProductCode, Enfagrow
# A+ is the ProductName and 36.79 is the Price. Then, solve the following statements

# SK020,Enfagrow A+,36.79
# SK042,Ayamas Nuget Crispy,9.99
# SK013,100 Plus,6.49
# SK066,Ali Cafe,8.99
# SK079,Dettol Natural,4.99

# - Display the information above in a table.
# - Display the information above in a table sort by product name in ascending order.
# - Add a new product SK023, Johnson PH, 5.99 to the data frame and display
# the information in a table sort by product name in ascending order.
# - Display all rows where product price more than 8.00.
# - Display the product with maximum price and minimum price.
# - Count the number of items where the product name begins with "A"

sk.data<-data.frame(
  ProductCode = c("SK020","SK042","SK013","SK066","SK079"),
  ProductName = c("Enfagrow A+","Ayamas Nuget Crispy","100 Plus","Ali Cafe","Dettol Natural"),
  Price = c(36.79,9.99,6.49,8.99,4.99)
)
print(sk.data)

sk.data_sorted <- sk.data[order(sk.data$ProductName), ]
print(sk.data_sorted)

new_row<-c("SK023","Johnson PH",5.99)
sk.data<-rbind(sk.data,new_row)
print(sk.data)

print(sk.data[with(sk.data, Price>8.00),])
print(sk.data[which.max(sk.data$Price),])
print(sk.data[which.min(sk.data$Price),])
print(with(sk.data, sum(substr(ProductName, 1, 1) == "A")))
