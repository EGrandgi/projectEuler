### 0020
options("scipen" = 10000, "digits" = 22)

fac <- function(n){
  if (n != 1){n*fac(n-1)}
  else {n}
}

n <- fac(100)

sum_ <- 0
for (c in 1:nchar(n)){
  sum_ <- sum_ + as.numeric(substr(n, c, c))
}
