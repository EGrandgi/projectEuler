### 0023
d <- function(n) {
    sum_ <- 0
    if (n == 1) {
        sum_ <- 1
    } else {
        for (k in (1:(n - 1))) {
            if (n%%k == 0) {
                sum_ <- sum_ + k
            }
        }
    }
    sum_
}

numbers <- (1:28111)
are.abundant <- as.vector(rep(NA, length(numbers)))
for (n in 1:length(numbers)) {
    are.abundant[n] <- (d(n) > n)
}
abundant <- numbers[are.abundant]

can <- matrix(0, nrow = length(abundant), ncol = length(abundant), dimnames = list(abundant, abundant))

for (i in (1:length(abundant))) {
    for (j in (i:length(abundant))) {
        can[i, j] <- sum(abundant[c(i, j)])
    }
}

can <- unique(as.vector(can))
can <- can[can <= 28123]
sum(setdiff(numbers, can))
