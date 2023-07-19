# Create an R file named matrix.r. The script will ask user to enter M and N. Create a
# matrix with M rows and N columns with random numbers 1-50. Display the matrix
# and then count the number of odd and even numbers in the matrix

M <- as.integer(readline("Enter number of rows: "))
N <- as.integer(readline("Enter number of columns: "))

mat<-matrix(sample(1:50, M*N, replace=TRUE), nrow = M)

print(mat)

odd<-sum(mat%%2==1)
even<-sum(mat%%2==0)

cat("odd:", odd, "\t", "even", even)