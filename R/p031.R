### 0031
result <- 0
remainder <- 200

for(i1 in seq(0,remainder+1,200)){
  remainder <- 200-i1
  for(i2 in seq(0,remainder+1,100)){
    remainder <- 200-i1-i2
    for(i3 in seq(0,remainder+1,50)){
      remainder <- 200-i1-i2-i3
      for(i4 in seq(0,remainder+1,20)){
        remainder <- 200-i1-i2-i3-i4
        for(i5 in seq(0,remainder+1,10)){
          remainder <- 200-i1-i2-i3-i4-i5
          for(i6 in seq(0,remainder+1,5)){
            remainder <- 200-i1-i2-i3-i4-i5-i6
            for(i7 in seq(0,remainder+1,2)){
              i8 <- 200-i1-i2-i3-i4-i5-i6-i7
              if(i8>=0){result <- result+1}
            }}}}}}}

result
