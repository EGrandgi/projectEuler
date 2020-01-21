### 0012
count_divisors <- function(n){
  count <- 0
  for (i in 1:(floor(sqrt(n))+1)){
    if (n%%i == 0){
      count <- count + 2
    }
    if (i*i == n){
      count <- count -1
    }
  }
  count
}

until <- 0
c <- 0
while (c < 500){
  until <- until +1
  n <- (until)*(until +1)/2
  c <- count_divisors(n)
}
print(n)
