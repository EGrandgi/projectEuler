### 0023
d <- function(n){
  sum_ <- 0
  if (n == 1){sum_ <- 1}
  else {
    for (k in (1:(n-1))){
      if (n%%k == 0){
        sum_ <- sum_ + k}}}
  sum_}

abundant <- c()
for (n in (1:28111)){
  if(d(n) > n){abundant <- c(abundant, n)}
}

s <- Sys.time()
can <- c()
for (i in (1:length(abundant))){
  for (j in (i+1):length(abundant)){
    if (i+j < 28123){
    can <- c(can, i+j)}
  }}
e <- Sys.time()
print(e-s)

can <- sort(unique(can))

numbers <- (1:28123)
sum(setdiff(numbers, can))
