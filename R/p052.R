### 0052
same.digits <- function(m, n){
  if(nchar(m) != nchar(n)){F} else {
    if(sum(sort(unlist(strsplit(as.character(m), ''))) == sort(unlist(strsplit(as.character(n), '')))) == length(unlist(strsplit(as.character(m), '')))){
      T
    } else {F}
  }
}

i <- 1
found <- F
while(found == F){
  i <- i + 1
  if(same.digits(2*i, 3*i) == T & same.digits(3*i, 4*i) == T & same.digits(4*i, 5*i) == T & same.digits(5*i, 6*i) == T){
    result <- i
    found <- T
  }
}

result

