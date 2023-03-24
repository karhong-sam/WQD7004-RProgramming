#In each case, what is the value of x?
x1<-2-1*2 #0
x2<-6/3-2+1*0+3/3-3 #-2
x3<-19%%17%%13 #2
x4<-(19%%17)%%13 #2
x5<-19%%(17%%13) #3
x6<-2^17%%17 #2
x7<-3-2%%5+3*2-4/2 #5

ans1 <- print(list(x1 = x1, x2 = x2, x3 = x3, x4 = x4, x5 = x5, x6 = x6, x7 = x7))

# Shorten the notation of following vectors
x1 <- c(157:164)
x2 <- rev(1:10)
x3 <- c(-1071:-1075, -1074:-1071)
x4 <- c(1.5:5.5)

ans2 <- print(list(x1 = x1, x2 = x2, x3 = x3, x4 = x4))

# Create a vector x of with the following value (0.15, 1.30, 3.45, 5.75). Then display
# the vector in character and integer.
x1 <- c(0.15, 1.30, 3.45, 5.75)
x1_c <- as.character(x1)
x1_i <- as.integer(x1)

ans3 <- print(list(char = x1_c, int = x1_i))

# Create a vector y based on the requirements below:
# a. A sequence of 10 numbers from 20-11
y1 <- seq(20, 11)

# b. A sequence of odd numbers from 11-20
y2 <- seq(11, 20, 2)

# c. A sequence of first twelve square number starting from 1.
y3 <- seq(from = 1, by = 2^2, length.out = 12)

# d. A sequence of first eleven exponential number of 2 starting from 1.
y4 <- seq(from = 1, by = exp(2), length.out = 11)

ans4 <- print(list(y1 = y1, y2 = y2, y3 = y3, y4 = y4))

# Create a vector z based on the requirements below:
# a. A sequence of 10 W
z1 <- c(10, "W")

# b. A sequence of R R R S S S
z2 <- rep(c("R", "S"), each = 3)

# c. The first 5 alphabets in lower case
z3 <- letters[1:5]

# d. A sequence of players from Player1 – Player10
z4 <- paste("Player", sep = "-", 1:10)

ans5 <- print(list(z1 = z1, z2 = z2, z3 = z3, z4 = z4))

# Create vectors as below
# a. Display the vector
Mtut1 <- print(c(Ali = 15, Abu = 17, Ahmad = 10, Bala = 8, Chong = 19))
Mtut2 <- print(c(Ali = 5, Abu = 4, Ahmad = 3, Bala = 5, Chong = 4))

# b. What is the total mark for Abu?
Mabu <- print(Mtut1[2] + Mtut2[2])

# c. Display the percentage for each student in two decimal places 
# if the total mark is 30.
Mtut <- print(Mtut1 + Mtut2)

Mttl <- print(round(Mtut / 30 * 100, 2))

# Create a vector num of size 10 with any random value from 51-100. Display the
# vector and then assign all the even numbers to a new vector named even.
num <- print(sample(51:100, size = 10, replace = FALSE))
even <- print(num[num %% 2 == 0])
