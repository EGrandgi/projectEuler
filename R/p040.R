### 0040
library(gmp)
N <- as.bigz(gsub(", ", "", toString(c(1:1e+06))))

vect_n <- c(1, 10, 100, 1000, 10000, 1e+05, 1e+06)
p <- 1
for (n in vect_n) {
    p <- p * as.numeric(substr(N, n, n))
}
p

