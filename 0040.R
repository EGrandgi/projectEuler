### 0040
# N <- ""
# M <- 1
# while (nchar(N) < 1000000){
#   N <- paste(N, M, sep = "")
#   M <- M+1
# }

library(gmp)
N <- as.bigz(as.numeric(gsub(", ", "", toString(N))))

vect_n <- c(1, 10, 100, 1000, 10000, 100000, 1000000)
sum_ <- 0
for (n in vect_n){
  sum_ <- sum_ + as.numeric(substr(N, n, n))
}
sum_

