### 0001
sum <- 0

for (n in 1:999) {
    if (n%%3 == 0 | n%%5 == 0) {
        sum <- sum + n
    }
}

sum
