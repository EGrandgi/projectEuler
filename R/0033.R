### 0033

pgcd <- function(a,b){
  if(b==0){pgcd <- a}
  else{
    r <- a%%b
    pgcd <- pgcd(b,r)
  }
  pgcd
}

pi_den <- 1
pi_num <- 1

for(i in c(1:9)){
  for(den in c(1:i)){
    for(num in c(1:den)){
      if((num*10+i)*den == num*(i*10+den)){
        pi_den <- pi_den*den
        pi_num <- pi_num*num}}}}

pi_den/pgcd(pi_den,pi_num)
