### 0023
library(pbmcapply)

d <- function(n){
  sum_ <- 0
  if (n == 1){sum_ <- 1}
  else {
    for (k in (1:(n-1))){
      if (n%%k == 0){
        sum_ <- sum_ + k}}}
  sum_}

abundant <- list()
abundant <- pbmclapply((1:28111), function(n){
  if(d(n) > n){abundant[length(abundant)+1] <- n}
}, mc.cores = 10)
abundant <- unlist(abundant)

# abundant <- c()
# for (n in (1:28111)){
#   if(d(n) > n){abundant <- c(abundant, n)}
# }

can <- list()
can <- pbmclapply((1:length(abundant)), function(i){
  pbmclapply((i:length(abundant)), function(j){
    if (i+j < 28123){can[length(can)+1] <- i+j}
  }, mc.cores = 10)
}, mc.cores = 10)


# can <- c()

#for (i in (1:length(abundant))){
#  for (j in (i+1):length(abundant)){
#    if (i+j < 28123){
#      can <- c(can, i+j)}
# }}

can <- sort(unique(can))

numbers <- (1:28123)
sum(setdiff(numbers, can))
