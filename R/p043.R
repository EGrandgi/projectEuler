### 0043
library('gtools')
pandigitals <- permutations(n = 10, r = 10, v = 0:9)

sum_ <- 0
div <- c(2, 3, 5, 7, 11, 13, 17)

for(i in 1:length(pandigitals)){
  pan <- paste(pandigitals[i,],collapse = "")
  j <- 2
  while(j <=8 & as.numeric(substr(pan,j,j+2))%%div[j-1]==0){j <- j+1} 
  if(j==9){sum_ <- sum_+as.numeric(pan)}
}
print(sum_)

