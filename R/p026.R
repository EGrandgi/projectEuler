### 0026
cycle_length <- function(d) {
    i <- 0
    r <- 10
    while (i <= 0 | r != 10) {
        r <- 10 * (r%%d)
        i <- i + 1
    }
    i
}

longest_cycle <- 0
id_longest_cycle <- 0

for (d in (2:999)) {
    if (d%%2 != 0 & d%%5 != 0) {
        if (cycle_length(d) > longest_cycle) {
            longest_cycle <- cycle_length(d)
            id_longest_cycle <- d
        }
    }
}

