### 0014
calc_next <- function(n){
  if (n%%2 == 0){n <- n/2}
  else {n <- 3*n + 1}
  n
}

sequence <- function(start){
  seq <- c(start)
  last <- start
  while (last !=1){
    len <- length(seq)
    next_ <- calc_next(seq[len])
    seq <- c(seq, next_)
    last <- seq[len]
  }
  if (start == 1){seq}
  else {seq[1:len]}
}

length_longest <- 0
longest_start <- 0
for (s in (1:1000000)){
  seq <- sequence(s)
  if (length(seq) > length_longest){
    length_longest <- length(seq)
    longest_start <- s
  }
}
print(longest_start)
