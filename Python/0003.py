### 0003
k = 600851475143

prime_factors = list()

while k>1:
  i = 2
  while k%i != 0:
    i = i+1
  k = k/i
  prime_factors.append(i)

max(prime_factors)
