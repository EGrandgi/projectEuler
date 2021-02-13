### 0037

options(scipen = 10000, digits = 22)

is.prime <- function(n) {
    ifelse(n != 1, (n == 2L & n != 1) || all(n%%2L:max(2, floor(sqrt(n))) != 0), F)
}

is.truncatable <- function(n) {
    i <- 1
    trunc_l <- T
    while (i <= nchar(n) & trunc_l == T) {
        if (is.prime(as.numeric(substr(n, 1, i))) == F) {
            trunc_l <- F
        }
        i <- i + 1
    }
    
    i <- nchar(n)
    trunc_r <- T
    while (i >= 1 & trunc_r == T) {
        if (is.prime(as.numeric(substr(n, i, nchar(n)))) == F) {
            trunc_r <- F
        }
        i <- i - 1
    }
    
    result <- ifelse(trunc_l == T & trunc_r == T, T, F)
    result
    
}

sum_ <- 0
count_ <- 1
n <- 8
while (count_ < 12) {
    sum_ <- ifelse(is.truncatable(n), sum_ + n, sum_)
    if (is.truncatable(n)) {
        print(n)
    }
    count_ <- ifelse(is.truncatable(n), count_ + 1, count_)
    n <- n + 1
}
