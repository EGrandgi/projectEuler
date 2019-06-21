### 0029
# length(unique(sort(c(outer(2:100,2:100,"^")))))

library("gmp")

length(unique(do.call("c",sapply(as.bigz(2:100),function(a) a^(as.bigz(2:100))))))


