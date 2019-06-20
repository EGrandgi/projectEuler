### 0036
cycle_length <- function(d){
  r <- 0
  l <- 1
  while (r != 1%%d & r != 10){
    r <- (10**l)%%d
    l <- l+1
  }
  l-1
}


longest_cycle <- 0
id_longest_cycle <- 0

for (d in (1:999)){
  if (d%%2 != 0 & d%%5 != 0){
    if(cycle_length(d) > longest_cycle){
      longest_cycle <- cycle_length(d)
      id_longest_cycle <- d
      }
}}

