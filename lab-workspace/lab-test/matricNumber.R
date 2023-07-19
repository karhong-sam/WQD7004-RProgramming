# Matrix no: S2191926
monthly_payment_func <- function(principal, interest_rate, total_months) {
  i <- interest_rate / (12 * 100)
  M <- (principal * i) / (1 - (1 + i)^(-total_months))
  return(M)
}

principal_portion_due_func <- function(monthly_payment, interest_rate, total_months, month_under_consideration) {
  i <- interest_rate / (12 * 100)
  C <- monthly_payment * (1 + i)^(-(1 + total_months - month_under_consideration))
  return(C)
}

interest_due_func <- function(monthly_payment, principal_portion_due) {
  L <- monthly_payment - principal_portion_due
  return(L)
}

remaining_principal_balance_due_func <- function(interest_due, interest_rate, principal_portion_due) {
  i <- interest_rate / (12 * 100)
  R <- interest_due / i - principal_portion_due
  return(R)
}

total_interest_func <- function(total_interest, interest_due) {
  return(total_interest + interest_due)
}

# P<-91926
P <- 10000
i <- 4
N <- 12

df <- data.frame(matrix(ncol = 6, nrow = N))
colnames(df) <- c("Month", "Monthly_Payment", "Principal", "Interest", "Unpaid_Balance", "Total_Interest")

total_interest <- 0
for (month in 1:N) {
  monthly_payment <- monthly_payment_func(P, i, N)
  principal_portion_due <- principal_portion_due_func(monthly_payment, i, N, month)
  interest_due <- interest_due_func(monthly_payment, principal_portion_due)
  remaining_principal_balance_due <- remaining_principal_balance_due_func(interest_due, i, principal_portion_due)
  total_interest <- total_interest_func(total_interest, interest_due)

  df$Month[month] <- month
  df$Monthly_Payment[month] <- round(monthly_payment, 1)
  df$Principal[month] <- round(principal_portion_due, 2)
  df$Interest[month] <- round(interest_due, 2)
  df$Unpaid_Balance[month] <- round(remaining_principal_balance_due, 2)
  df$Total_Interest[month] <- round(total_interest, 2)
}

df
