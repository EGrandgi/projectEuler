### 0015
nb_paths <- function(m, n) {
    factorial(m + n)/(factorial(m) * factorial(n))
}

nb_paths(20, 20)
