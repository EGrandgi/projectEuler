### 0015
import math

def nb_paths(m, n):
    return math.factorial(m+n)/(math.factorial(m)*math.factorial(n))

nb_paths(20, 20)
