# Write R scripts using the selection flow control for each of the following.
# a. Determine the biggest number among three numbers.

a<-10
b<-2
c<-99

if (a > b && a > c){
    print(a)
} else if (b > a && b > c) {
   print(b)
} else {
    print(c)
}

# b. A switch statement that displays Sunday, Monday, …, Saturday, if the number
# is 0, 1, ... 6.
day<-'0'
results<-switch(day,
    '1' ="Monday",
    '2' ="Tuesday",
    '3' ="Wednesday",
    '4' ="Thursday",
    '5' ="Friday",
    '6' ="Saturday",
    '0' ="Sunday"
    )
print(results)
# c. Determine whether the year is a leap year. A leap year is divisible by 4 but not
# by 100. A leap year is also divisible by 400.
leapyear<-2008
if (leapyear %% 400 == 0) {
    r<-print('it is leap year div by 400')
} else if (leapyear %% 4 == 0 && leapyear %% 100 != 0) {
   r<-print('it is a leap year')
} else{
    r<-print('it is not a leap year')
}

# Write R scripts using the ifelse() function for each of the following.
# a. Determine the positive and negative number in the vector.
num<-7
if(num>0){
    print('positive')
} else if (num<0) {
   print('negative')
} else{
    print('it is 0')
}
# b. Determine whether a character in the vector is uppercase or lowercase letter.
text<-'H'
if(text == toupper(text)){
    print('uppercase')
} else {
   print('lowercase')
}

# c. Compare the numbers from two vectors to determine whether a number is
# larger than, smaller than or equal to another number.
vec1<-c(2,4,6)
vec2<-c(3,5,3)

r<-ifelse(vec1>vec2, 'larger', ifelse(vec1<vec2, 'lower', 'equal'))
print(r)
# Write R statements using loop flow control for each of the following
# a. Find the largest integer n so that n^3
# is less than 2000.
n<-0
for (i in 1:2000){
    if (i^3 < 2000){
        n<-i
    } else {
        break
    }
}
print(n)

# b. Compute the sum of the series: 1/25+2/24+3/23 … + 25/1 in two decimal
# places.
sum <- 0
# Iterate through the terms in the series
for (i in 1:25) {
  term <- i / (26 - i)  # Compute the current term
  sum <- sum + term     # Add the current term to the sum
}
print(round(sum, 2))
# c. Display the first ten values of the Fibonacci sequence. Given the formula f1 =
# 1, f2 =1, fn = fn-1 + fn-2. 
fib <- c(2, 4)

# Loop to compute the next eight Fibonacci numbers
for (i in 3:10) {
  fib[i] <- fib[i-1] + fib[i-2]
}
print(fib)