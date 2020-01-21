### 0017
h <- 7 # hundred
t <- 8 # thousand
and <- 3 # and
nb <- c(3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8) # 1 to 19
dec <- c(0, 6, 6, 5, 5, 5, 7, 6, 6) # 20 to 90

sum_ <- 0

for (k in (1:1000)){
  units <- k%%10
  decades <- (k%%100 - units)/10
  hundreds <- (k%%1000 - k%%100)/100
  thousands <- (k%%10000 - k%%1000)/1000

  if (thousands != 0){
    if (hundreds != 0 | decades != 0 | units != 0){
      sum_ <- sum_ + nb[thousands] + t + and}
    else {sum_ <- sum_ + nb[thousands] + t}}

  if (hundreds != 0){
    if (decades !=0 | units != 0){
      sum_ <- sum_ + nb[hundreds] + h + and}
    else {sum_ <- sum_ + nb[hundreds] + h}}
  
  if (decades != 0){
    sum_ <- sum_ + dec[decades]}
  
  if (decades == 1){
    temp <- as.numeric(paste(decades, units, sep = ""))
    sum_ <- sum_ + nb[temp]}
  
  else {
    if (units != 0){
      sum_ <- sum_ + nb[units]}}
  }

sum_
