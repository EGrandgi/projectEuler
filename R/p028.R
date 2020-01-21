### 0028
n <- 1001
size_cr <- 8
vect <- c(1)
sum_ <- 1
for (c in (1:floor(n/2))){
  vect <- (vect[length(vect)] + 1):(vect[length(vect)] + size_cr)
  top_rigth <- vect[length(vect)]
  bottom_rigth <- vect[1] + size_cr/4 - 1
  sum_ <- sum_ + 2*(top_rigth + bottom_rigth)
  size_cr <- size_cr + 8
}
sum_
