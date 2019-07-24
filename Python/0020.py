### 0020
def fac(n):
    if n != 1:
        return n*fac(n-1)
    else: 
        return n
        
n = str(fac(100))


sum_ = 0
for c in range(0, len(n)):
    print(c)
    sum_ += int(n[c:c+1])
    
sum_
