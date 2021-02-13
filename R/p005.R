### 0005
is.mdiv <- function(n, until) {
    i <- 0
    while (i < until) {
        i <- i + 1
        if (n%%i == 0) {
            answer <- TRUE
        } else {
            answer <- FALSE
            i <- until + 1
        }
    }
    answer
}

smallest_mdiv <- function(until) {
    n <- 1
    while (is.mdiv(n, until) == FALSE) {
        n <- n + 1
    }
    n
}

smallest_mdiv(20)
