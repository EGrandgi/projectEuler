### 0012
triangle_number <- function(until){
  t <- 0
  for (i in (1:until)){
    t <- t + i
  }
  t
}

triangle_numbers_seq <- c()
for (i in (1:1000)){
  triangle_numbers_seq <- c(triangle_numbers_seq, triangle_number(i))
}

is.prime <- function(n) n == 2L || all(n %% 2L:max(2,floor(sqrt(n))) != 0)

prime_numbers <- c()
for (n in (2:100000000)){
  if (is.prime(n)){
    prime_numbers <- c(prime_numbers, n)
  }
}

prime_factors <- function(n){
  prime_factors_list <- c()
  for (p in (prime_numbers)){
    while (n%%p == 0){
      prime_factors_list <- c(prime_factors_list, p)
      n <- n/p
    }
  }
  prime_factors_list
}


count_divisors <- function(n){
  t <- table(prime_factors(n))
  prod(t+1)
}

for (n in (triangle_numbers_seq)){
  if(count_divisors(n)>500){
    print(n)
    stop()
  }
}
