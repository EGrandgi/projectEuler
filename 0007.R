### 0007
is.prime <- function(n) n == 2L || all(n %% 2L:max(2,floor(sqrt(n))) != 0)

prime_numbers <- c()
for (n in (2:1000000)){
  if (is.prime(n)){
    prime_numbers <- c(prime_numbers, n)
  }
}

prime_numbers[10001]
