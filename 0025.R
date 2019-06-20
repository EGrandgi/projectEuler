### 0025
options("scipen" = 10000, "digits" = 22)
fibonacci <- numeric(10000)
fibonacci[1] <- 1
fibonacci[2] <- 2

for (i in 3:10000) {
  fibonacci[i] <- fibonacci[i-1] + fibonacci[i-2]
  if (nchar(fibonacci[i])>999){print(i)}
}
