### 0027
is.prime <- function(n){ifelse(n>1,(n == 2L & n!=1) || all(n %% 2L:max(2,floor(sqrt(n))) != 0),F)}

primes_until <- function(n){
  primes <- c()
  for(i in 1:n){if(is.prime(i)){primes <- c(primes,i)}}
  primes
}

primes <- primes_until(1000)

nb_consecutive_primes <- function(a,b){
  n <- 0
  while(is.prime(n**2+a*n+b)){n <- n+1}
  n
}

highest <- 0
result <- 0
for(b in primes){
  vals_a <- seq(-b,b,2)
  for(a in vals_a){
    if(nb_consecutive_primes(a,b)>highest){
      highest <- nb_consecutive_primes(a,b)
      result <- a*b
    }
  }
}

result
