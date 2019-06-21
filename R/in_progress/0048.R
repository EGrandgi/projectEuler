### 0048
library(gmp)

# sum_ <- as.bigz(0)
# for (n in (1:1000)){
#   sum_ <- sum_ + as.bigz(n**n)%%10000000000
# }
# sum_ <- as.character(sum_)
# substr(sum_, nchar(sum_)-9, nchar(sum_))
# 
# sum_%%10000000000


do.call("sum", list(sapply((1:10), function(n) (n**n))))


#####
sum_ <- as.bigz(0)
for (n in (1:1000)){sum_ <- sum_ + as.bigz(n**n)}
substr(as.character(sum_), nchar(as.character(sum_))-9, nchar(as.character(sum_)))

