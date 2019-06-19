### 0021
d <- function(n){
  sum_ <- 0
  if (n == 1){sum_ <- 1}
  else {
    for (k in (1:(n-1))){
      if (n%%k == 0){
        sum_ <- sum_ + k}}}
  sum_
}
  
sum_amicables <- 0
for (i in (1:10000)){
  s <- d(i)
  if (d(s) == i & i !=s){
      sum_amicables <- sum_amicables + i}
}
