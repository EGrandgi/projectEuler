### 0053
cnp <- function(n, p) {
    factorial(n)/(factorial(p) * factorial(n - p))
}

count <- 0
for (n in c(23:100)) {
    for (p in c(floor(n/2):1)) {
        if (cnp(n, p) > 1e+06) {
            count <- ifelse(n%%2 == 0 & p == floor(n/2), count + 1, count + 2)
        } else {
            break
        }
    }
}

count

