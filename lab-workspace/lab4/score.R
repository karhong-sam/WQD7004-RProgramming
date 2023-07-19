# # Create an R file named score.r. The script will calculate the minimum, maximum,
# # average and standard deviation (s) of the exam score in a subject. The program will
# # accept the score and quit if negative score is entered.

# num <- as.integer(readline("Enter a score [negative score to quit] : "))
# r_avg<-0
# r_min<-0
# r_max<-0
# for (i in num){
#     if (num[i] < 0) {
#         break
#     } 
#     else if (num[i] >= 0) {
#        r_min<-min(num[i])
#        r_max<-max(num[i])
#        r_avg<-mean(num[i])
#     }
#     print(num)
# }

# Initialize variables
scores <- c()
r_min <- Inf
r_max <- -Inf
r_avg <- 0

# Loop to accept scores and calculate statistics
while (TRUE) {
  # Read in a score
  num <- as.integer(readline("Enter a score [negative score to quit]: "))
  
  # Check if score is negative
  if (num < 0) {
    break
  }
  
  # Add score to vector
  scores <- c(scores, num)
  
  # Update statistics
  r_min <- min(r_min, num)
  r_max <- max(r_max, num)
  r_avg <- mean(scores)
  s <- sd(scores)
  
  # Print current statistics
  cat("Score: ", num, "\n")
  cat("Min: ", r_min, "\n")
  cat("Max: ", r_max, "\n")
  cat("Avg: ", round(r_avg, 2), "\n")
  cat("S.D.: ", round(s, 2), "\n\n")
}