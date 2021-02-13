### 0016
options(scipen = 10000, digits = 22)

power_ <- function(n, p) {
    n^p
}

num <- power_(2, 1000)

sum_ <- 0
for (k in 1:nchar(num)) {
    sum_ <- sum_ + as.numeric(substr(num, k, k))
}
sum_
