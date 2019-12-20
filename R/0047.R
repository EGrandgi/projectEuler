### 0047

is.prime <- function(n){ifelse(n>1,(n == 2L) || all(n %% 2L:max(2,floor(sqrt(n))) != 0),F)}

primes_until <- function(n){
  primes <- c()
  for(i in 1:n){if(is.prime(i)){primes <- c(primes,i)}}
  primes
}
  
primes <- primes_until(10000)
nb_pf <- rep(0, 4)

for(i in c(647:150000)){
  res <- 0
  for(p in primes){
    if(i%%p == 0){
      res <- res + 1
      if(res == 4){break}
    } 
  }
  nb_pf[4] <- res
  if(sum(nb_pf) == 16){
    result <- i-3
    break}
  nb_pf <- c(nb_pf[2:4], 0)
}

result
