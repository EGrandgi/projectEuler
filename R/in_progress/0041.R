### 0041
is.pandigital <- function(nb, n){
  
  digits_nb <- strsplit(as.character(nb),"")[[1]]
  digits_ref <- as.character(c(1:n))
  
  if(identical(setdiff(digits_nb,digits_ref),character(0)) & identical(setdiff(digits_ref,digits_nb),character(0))){
    TRUE} else {FALSE}
  
}


# prime numbers
prime_numbers <- c(2)
cond <- "n%%2 != 0"
for (n in (2:10000)){
  if (eval(parse(text = cond))){
    prime_numbers <- c(prime_numbers, n)
    cond <- paste(cond, " & n%%", n, " != 0", sep = "")
  }
}

