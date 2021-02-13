### 0044
X <- c(1:10000)
pentagonals <- X*(3*X−1)/2

for (i in 1:length(pentagonals)) {
    for (j in i:length(pentagonals)) {
        sum_ <- pentagonals[i] + pentagonals[j]
        diff_ <- abs(pentagonals[i] - pentagonals[j])
        if (sum_ %in% pentagonals & diff_ %in% pentagonals) {
            result <- diff_
            break
        }
    }
}

result
