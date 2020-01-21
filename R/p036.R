### 0036

decimal_to_binary <- function(n){
  binary <- ''
  i<-0
  while(2**i<n){
    i<-i+1
  }

  power_exp <- i-1
  power <- 2**(i-1)

  while(power_exp>-1){
    power <- 2**power_exp
    if(n>=power){
      binary <- paste(binary,1,sep='')
      n <- n-power
    }else{
      binary <- paste(binary,0,sep='')
    }
    power_exp <- power_exp-1
  }
  binary
}

is.palindromic_2_10 <- function(n){
  binary <- decimal_to_binary(n)
  ifelse(as.character(decimal_to_binary(n)) == intToUtf8(rev(utf8ToInt(decimal_to_binary(n)))) & as.character(n) == intToUtf8(rev(utf8ToInt(as.character(n)))),T,F)
}

sum <- 0
for(n in 0:999999){
  sum <- ifelse(is.palindromic_2_10(n),sum+n,sum)
}

sum
