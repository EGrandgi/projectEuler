### 0010
is.prime <- function(n) {
    ifelse(n != 1, (n == 2L & n != 1) || all(n%%2L:max(2, floor(sqrt(n))) != 0), F)
}

prime_numbers <- c()
for (n in (2:2e+06)) {
    if (is.prime(n)) {
        prime_numbers <- c(prime_numbers, n)
    }
}

sum(prime_numbers)

