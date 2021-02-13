### 0004
is.palindrome <- function(n) {
    reverse <- ""
    for (i in nchar(n):1) {
        reverse <- as.numeric(paste(reverse, substr(n, i, i), sep = ""))
    }
    if (reverse == n) {
        TRUE
    } else {
        FALSE
    }
}

answer <- 0
for (i in (999:100)) {
    for (j in (999:100)) {
        if (is.palindrome(i * j) == TRUE & i * j > answer) {
            answer <- i * j
            print(paste(answer, " = ", i, "*", j, sep = ""))
            answer <- i * j
        }
    }
}
