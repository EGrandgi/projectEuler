### 0038

is.pandigital <- function(i,n){
  ifelse((nchar(i)==n & sum(duplicated(strsplit(as.character(i),'')[[1]]))==0 & sum(strsplit(as.character(i),'')[[1]]==0)==0),T,F)
}

largest <- 918273645

for(n in 5000:9999){
  concat_prod <- as.numeric(paste(n,2*n,sep=''))
  if((concat_prod>largest & is.pandigital(concat_prod,9))){
    largest <- concat_prod
  }
}
