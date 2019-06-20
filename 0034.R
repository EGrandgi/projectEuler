### 0034
sum_factorials <- function(n){
  sum_ <- 0
  for (c in (1:nchar(n))){
    sum_ <- sum_ + factorial(as.numeric(substr(n, c, c)))
  }
  sum_
}

i <- 1
while (10**i < i*factorial(9)){i <- i+1}

sum_ <- 0
for (n in (3:(i*factorial(9)))){
  if (sum_factorials(n) == n){sum_ <- sum_ + n}
}

