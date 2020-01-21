### 0030
sum_fifth <- function(n){
  sum_ <- 0
  for (c in (1:nchar(n))){
    sum_ <- sum_ + as.numeric(substr(n, c, c))**5
  }
  sum_
}

i <- 1
while (10**i < i*9**5){i <- i+1}

sum_ <- 0
for (n in (2:(i*9**5))){
  if (sum_fifth(n) == n){sum_ <- sum_ + n}
}

