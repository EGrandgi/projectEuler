### 0039
highest <- 0
p_highest <- 0 
abc <- c(0, 0, 0)

for (p in (2:1000)){
  count_solutions <- 0
  for (a in (2:500)){
    if (a != p){
      if (((p**2 - 2*a*p)%%(2*(p - a))) == 0){
        count_solutions <- count_solutions + 1
      }
    }
  }
  if (count_solutions > highest){
    highest <- count_solutions
    p_highest <- p
    # abc <- c(a, (p**2 - 2*a*p)/(2*(p - a)), p - a - (p**2 - 2*a*p)/(2*(p - a)))
  }
}



