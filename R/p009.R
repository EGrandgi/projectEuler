### 0009
is.pythagorean <- function(t) {
    if (t[1] < t[2] & t[2] < t[3] & t[1]^2 + t[2]^2 == t[3]^2) {
        TRUE
    } else {
        FALSE
    }
}

for (a in (1:499)) {
    for (b in (a:500)) {
        c <- 1000 - a - b
        if (is.pythagorean(c(a, b, c))) {
            print(paste(a, "² + ", b, "² = ", c, "²", sep = ""))
            print(a * b * c)
        }
    }
}
