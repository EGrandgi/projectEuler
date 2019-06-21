### 0048
library(gmp)

sum_ <- as.bigz(0)
for (n in (1:1000)){
  sum_ <- sum_ + as.bigz(n**n)
}
sum_
