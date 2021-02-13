### 0025
library(gmp)

fibonacci_i_1 <- as.bigz(1)
fibonacci_i_2 <- as.bigz(1)

i <- 2
ndigits <- 0
while (ndigits < 1000) {
    fibonacci_i <- fibonacci_i_1 + fibonacci_i_2
    ndigits <- nchar(as.character(fibonacci_i))
    fibonacci_i_2 <- fibonacci_i_1
    fibonacci_i_1 <- fibonacci_i
    i <- i + 1
}
i

