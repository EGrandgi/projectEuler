### 0010
is.prime <- function(n) n == 2L || all(n %% 2L:max(2,floor(sqrt(n))) != 0)

prime_numbers <- c()
for (n in (2:2000000)){
  if (is.prime(n)){
    prime_numbers <- c(prime_numbers, n)
  }
}

sum(prime_numbers)
