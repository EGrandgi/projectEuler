### 0041
is.pandigital <- function(i,n){
  ifelse((nchar(i)==n & sum(duplicated(strsplit(as.character(i),'')[[1]]))==0 & sum(as.numeric(strsplit(as.character(i),'')[[1]])) == sum(1:n) & sum(strsplit(as.character(i),'')[[1]]==0)==0),T,F)
}

is.prime <- function(n){ifelse(n>=1,(n == 2L) || all(n %% 2L:max(2,floor(sqrt(n))) != 0),F)}

i <- 7654321
result <- ''

while(result == ''){
  n <- nchar(i)
  if(is.prime(i) & is.pandigital(i,n)){
    result <- i
  }
  i <- i-1
}

result
