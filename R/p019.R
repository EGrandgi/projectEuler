### 0019
nb_days <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
nb_days_leap <- c(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

first_of_month_list <- function(nb_days) {
    i <- c(1)
    for (m in (2:12)) {
        i <- c(i, i[m - 1] + nb_days[m - 1])
    }
    list_1 <- rep(NA, sum(nb_days))
    list_1[i] <- 0
    list_1
}

is.leap <- function(y) {
    if (y%%4 == 0) {
        if (y%%100 == 0) {
            if (y%%400 == 0) {
                TRUE
            } else {
                FALSE
            }
        } else {
            TRUE
        }
    } else {
        FALSE
    }
}

count_1year <- function(y, start) {
    if (!is.leap(y)) {
        list_1 <- first_of_month_list(nb_days)
        n <- 365
    } else {
        list_1 <- first_of_month_list(nb_days_leap)
        n <- 366
    }
    days_year <- c()
    for (d in (start:(n + start - 1))) {
        days_year <- c(days_year, d%%7)
    }
    length(which(list_1 == days_year))
}

is.leap(1900)
start <- 1 + 365%%7
sum_ <- 0
for (y in 1901:2000) {
    sum_ <- sum_ + count_1year(y, start)
    if (!is.leap(y)) {
        start <- start + 365%%7
    } else {
        start <- start + 366%%7
    }
}
sum_

