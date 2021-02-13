### 0050

is.prime <- function(n) {
    ifelse(n > 1, (n == 2L) || all(n%%2L:max(2, floor(sqrt(n))) != 0), F)
}

primes_until <- function(n) {
    primes <- c()
    for (i in 1:n) {
        if (is.prime(i)) {
            primes <- c(primes, i)
        }
    }
    primes
}

cons_sum <- function(primes, i, j) {
    sum(primes[c(i:j)])
}

primes <- primes_until(1e+06)

for (i in c(1:length(primes))) {
    if (cons_sum(primes, i, i + 21) > 1e+06) {
        upper_bound <- i
        break
    }
}

upper_bound_index <- length(primes[primes < upper_bound])
primes <- primes[primes < upper_bound]

found <- F
for (i in c(upper_bound_index:22)) {
    for (j in c(1:(upper_bound_index - i))) {
        if (is.prime(cons_sum(primes, j, j + i - 1))) {
            if (cons_sum(primes, j, j + i - 1) < 1e+06) {
                result <- cons_sum(primes, j, j + i - 1)
                found <- T
            }
        }
    }
    if (found == T) {
        break
    }
}

result
