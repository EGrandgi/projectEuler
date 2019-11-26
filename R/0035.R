### 0035

is.prime <- function(n) n == 2L || all(n %% 2L:max(2,floor(sqrt(n))) != 0)

is_circular <- function(n){
  
  if(is.prime(n)){
    vect <- strsplit(as.character(n),'')[[1]]
    number <- as.numeric(paste(vect,collapse=''))
    r <- 1
    res <- T
    while(r<=length(vect) & is.prime(number)==T){
      number <- as.numeric(paste(vect,collapse=''))
      res <- is.prime(number)
      vect <- c(vect[-1],vect[1])
      r <- r+1
    }
  }else{
    res <- FALSE
    }
  res
}

count <- 0
for(k in 2:999999){
  if(is.prime(k)==T){
    if(is_circular(k)==T){count <- count+1}
  }
}

count
