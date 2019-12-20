### 0048

library(gmp)

seq_ <- c(1:1000)

sum_ <- as.character(sum(as.bigz(seq_)**as.bigz(seq_)))
substr(sum_, (nchar(sum_)-9), nchar(sum_))
