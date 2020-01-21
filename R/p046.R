### 0046

is.prime <- function(n){ifelse(n>1,(n == 2L) || all(n %% 2L:max(2,floor(sqrt(n))) != 0),F)}

primes_until <- function(n){
  primes <- c()
  for(i in 1:n){if(is.prime(i)){primes <- c(primes,i)}}
  primes
}
    
primes <- primes_until(10000)
odd <- seq(3, 10000, 2)
to_test <- setdiff(odd, primes)

for(i in to_test){
  cond <- F
  for(j in primes){
    if(j < i & sqrt((i-j)/2) == as.integer(sqrt((i-j)/2))){
      cond <- T
      break
    }
  }
  if(cond == F){
    print(i)
    break
  }
}

i
