### 0006
sum_squares <- function(until) {
    sum <- 0
    for (i in (1:until)) {
        sum <- sum + i^2
    }
    sum
}

square_sum <- function(until) {
    sum <- 0
    for (i in (1:until)) {
        sum <- sum + i
    }
    sum^2
}


dif <- function(until) {
    square_sum(until) - sum_squares(until)
}

dif(100)
