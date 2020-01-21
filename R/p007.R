### 0007
is.prime <- function(n){ifelse(n!=1,(n == 2L & n!=1) || all(n %% 2L:max(2,floor(sqrt(n))) != 0),F)}

prime_numbers <- c()
n <- 2
count_ <- 1
while(count_ < 10002){
  if(is.prime(n)){count_ <- count_+1}
  n <- n+1
}

n-1
