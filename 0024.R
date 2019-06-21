### 0024
perm_0_9 <- permutations(10, 10, c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9), repeats.allowed = F)
as.numeric(gsub(", ", "", toString(perm_0_9[1000000,])))

