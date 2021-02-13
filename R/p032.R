### 0032

is.pandigital <- function(i, n) {
    ifelse((nchar(i) == n & sum(duplicated(strsplit(as.character(i), "")[[1]])) == 0 & sum(strsplit(as.character(i), "")[[1]] == 
        0) == 0), T, F)
}

mmps <- c()

for (m in 1:9) {
    for (n in 1234:10000) {
        if (is.pandigital(as.numeric(paste(m, n, m * n, sep = "")), 9)) {
            mmps <- c(mmps, m * n)
        }
    }
}

for (m in 10:100) {
    for (n in 123:1000) {
        if (is.pandigital(as.numeric(paste(m, n, m * n, sep = "")), 9)) {
            mmps <- c(mmps, m * n)
        }
    }
}

sum(unique(mmps))
