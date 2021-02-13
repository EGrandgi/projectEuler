### 0049

is.prime <- function(n) {
    ifelse(n > 1, (n == 2L) || all(n%%2L:max(2, floor(sqrt(n))) != 0), F)
}

primes_from_until <- function(m, n) {
    primes <- c()
    for (i in m:n) {
        if (is.prime(i)) {
            primes <- c(primes, i)
        }
    }
    primes
}

are.perms <- function(i, j) {
    paste(sort(as.numeric(unlist(strsplit(as.character(i), "")))), collapse = "") == paste(sort(as.numeric(unlist(strsplit(as.character(j), 
        "")))), collapse = "")
}

primes <- primes_from_until(1487, 9999)

for (i in c(1:(length(primes) - 2))) {
    for (j in c((i + 1):length(primes))) {
        if (are.perms(primes[i], primes[j])) {
            step_ <- primes[j] - primes[i]
            third_term <- primes[j] + step_
            if (nchar(third_term) == 4 & is.prime(third_term)) {
                if (are.perms(primes[i], third_term)) {
                  result <- c(primes[i], primes[j], third_term)
                  break
                }
            }
        }
    }
}

paste(result, collapse = "")
