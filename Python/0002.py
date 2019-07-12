### 0002
fi_1, fi, sum_ = 1, 2, 2

while fi <= 4000000:
    fi_1, fi = fi, fi_1 + fi
    if fi%2 == 0:
        sum_ += fi
    
sum_
