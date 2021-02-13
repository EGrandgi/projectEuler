### 0051

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

primes <- primes_from_until(1e+05, 999999)

has.m3rep <- function(p) {
    nb <- unlist(strsplit(as.character(p), ""))
    (3 %in% table(nb) | 4 %in% table(nb) | 5 %in% table(nb) | 6 %in% table(nb))
}

to_check <- primes[sapply(primes, function(p) {
    has.m3rep(p)
})]

generate_family <- function(p, pattern) {
    nb <- unlist(strsplit(as.character(p), ""))
    family <- list()
    eval(parse(text = paste("for(r in c(0:9)){family <- c(family, list(", pattern, "))}", sep = "")))
    family <- unlist(lapply(family, function(x) {
        as.numeric(paste(x, collapse = ""))
    }))
    family <- unique(family)
}

patterns <- c("c(nb[1:2], rep(r, 3), nb[6])", "c(nb[1], rep(r, 3), nb[5:6])", "c(rep(r, 3), nb[4:6])", "c(nb[1], r, nb[3], rep(r, 2), nb[6])", 
    "c(rep(r, 2), nb[3], r, nb[5:6])", "c(nb[1], rep(r, 2), nb[4], r, nb[6])", "c(rep(r,2), nb[3:4], r, nb[6])", "c(r, nb[2], r, nb[4], r, nb[6])", 
    "c(r, nb[2], rep(r, 2), nb[5:6])", "c(r, nb[2:3], rep(r, 2), nb[6])")

found <- F
for (p in to_check) {
    for (pattern in patterns) {
        family <- generate_family(p, pattern)
        
        if (sum(family %in% primes) == 8) {
            result <- min(family[family %in% primes])
            found <- T
            break
        }
    }
    if (found == T) {
        break
    }
}
result
