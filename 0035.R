### 0035
library(gtools)

int_to_vect <- function(n){
  vect <- "c("
  
  for (c in (1:nchar(n))){
    vect <- paste(vect, substr(n, c, c), ",", sep = "")
    }
  vect <- eval(parse(text=paste(substr(vect, 1, nchar(vect)-1), ")", sep ="")))
  vect
}


for (n in (1:100)){
  vect <- int_to_vect(n)
  perm <- permutations(nchar(n), nchar(n), vect, repeats.allowed = F)
  
  for (i in (1:length(perm))){
    perm[i,]
  }
  perm[1,]
  
}

vect <- int_to_vect(n)
permutations(4, 4, vect, repeats.allowed = F)

as.numeric(gsub(", ", "", toString(perm)))
