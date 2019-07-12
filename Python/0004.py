### 0004
def is_palindrome(n):
    n = str(n)
    if n[::-1] == n:
        return True
    else:
        return False
        
    
answer = 0
for i in range(999,99,-1):
    for j in range(999,99,-1):
        if is_palindrome(i*j) and i*j > answer:
            answer = i*j
            
answer
