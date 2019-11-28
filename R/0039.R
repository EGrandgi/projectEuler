### 0039

is.pythagorean <- function(a,b,c){
  ifelse(a**2+b**2==c**2,T,F)
}

highest_nb_sol <- 0
result <- 0

for(p in 12:1000){
  nb_sol <- 0
  for(a in 2:floor(p/3)){
    for(b in a:floor(p/2)){
      c = p-b-a
      if(is.pythagorean(a,b,c) & c>0){nb_sol <- nb_sol+1}
    }
  }
  if(nb_sol>highest_nb_sol){
    highest_nb_sol <- nb_sol
    result <- p
  }
}

result
