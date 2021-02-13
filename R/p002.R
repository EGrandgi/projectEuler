### 0002
fibonacci <- numeric(50)
fibonacci[1] <- 1
fibonacci[2] <- 2

for (i in 3:50) {
    fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}


sum <- 0

for (i in 1:length(fibonacci)) {
    if (fibonacci[i]%%2 == 0 & fibonacci[i] < 4e+06) {
        sum <- sum + fibonacci[i]
    }
}
