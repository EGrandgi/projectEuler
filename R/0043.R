### 0043
int_to_vect <- function(n){
  vect <- "c("
  
  for (c in (1:nchar(n))){
    vect <- paste(vect, substr(n, c, c), ",", sep = "")
  }
  vect <- eval(parse(text=paste(substr(vect, 1, nchar(vect)-1), ")", sep ="")))
  vect
}

perms <- permutations(10, 10, int_to_vect(1234567890), repeats.allowed = F)


