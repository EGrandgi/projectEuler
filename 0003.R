### 0003
# prime numbers
prime_numbers <- c(2)
cond <- "n%%2 != 0"
for (n in (2:10000)){
  if (eval(parse(text = cond))){
    prime_numbers <- c(prime_numbers, n)
    cond <- paste(cond, " & n%%", n, " != 0", sep = "")
  }
}

# prime factors
prime_factors <- c()
for (p in prime_numbers){
  if (600851475143%%p == 0){
    prime_factors <- c(prime_factors, p)
  }
}

# OU
k <- 600851475143
prime_factors <- c()
while (k>1){
  i <- 2
  while (k%%i != 0){
    i <- i+1
  }
  k <- k/i
  prime_factors <- c(prime_factors, i)
}
