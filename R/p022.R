### 0022
alpha_values <- as.data.frame(setNames(list(LETTERS, c(1:26)), c("alpha", "num")))

file <- read.delim("/home/emma/p022_names.txt", header = FALSE, sep = ",")
colnames(file) <- c(1:length(file))
file[which(is.na(file))] <- "NA"
file <- t(file)
file <- sort(file)

alpha_score <- function(name) {
    score <- 0
    for (c in (1:nchar(name))) {
        score <- score + alpha_values$num[alpha_values$alpha == substr(name, c, c)]
    }
    score
}

sum_ <- 0
for (i in (1:length(file))) {
    name <- file[i]
    sum_ <- sum_ + alpha_score(name) * i
}

