### 0040
library(gmp)
N <- as.bigz(gsub(", ", "", toString(c(1:1000000))))

vect_n <- c(1, 10, 100, 1000, 10000, 100000, 1000000)
p <- 1
for (n in vect_n){
  p <- p*as.numeric(substr(N, n, n))
}
p

