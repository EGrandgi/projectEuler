### 0006
def sum_squares(until):
    sum_ = 0
    for i in range(1, until+1):
        sum_ += i**2
    return sum_

def square_sum(until):
    sum_ = 0
    for i in range(1, until+1):
        sum_ += i
    return sum_**2

def dif(until):
    return square_sum(until)-sum_squares(until)

dif(100)
