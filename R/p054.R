### 0054

library('readtext')

path <- ''
poker <- readLines(paste(path,'p054_poker.txt',sep=''))
poker <- lapply(poker, function(x){
  p1 <- strsplit(x, ' ')[[1]][1:5]
  p2 <- strsplit(x, ' ')[[1]][6:10]
  list(p1, p2)
})

cards <- c(2:9, 'T', 'J', 'Q', 'K', 'A')
card_value <- function(card){match(card, cards) + 1}
card_values <- function(h){
  as.numeric(lapply(h, function(x){card_value(strsplit(x, '')[[1]][1])}))
}

same_suit <- function(h){
  length(c(1:5)[grepl('H', h)]) == 5 | length(c(1:5)[grepl('S', h)]) == 5 | length(c(1:5)[grepl('D', h)]) == 5 | length(c(1:5)[grepl('C', h)]) == 5
}

# Define hands types
royal_flush <- function(h){  # Ten, Jack, Queen, King, Ace, in same suit
  cond <- same_suit(h) & grepl('T', toString(h)) == T & grepl('J', toString(h)) == T & grepl('Q', toString(h)) == T & grepl('K', toString(h)) == T & grepl('A', toString(h)) == T
  res <- ifelse(cond, max(card_values(h)), 0)
  res
}

straight_flush <- function(h){  # All cards are consecutive values of same suit
  cond <- F
  if(same_suit(h)){
    vals <- sort(card_values(h))
    if(length(c(1:5)[vals == vals[1]:(vals[1] + 4)]) == 5){cond <- T} else {cond <- F}
  }
  else{cond <- F}
  res <- ifelse(cond, max(card_values(h)), 0)
  res
}

four_of_a_kind <- function(h){  # Four cards of the same value
  cond <- length(unique(card_values(h))) <= 2
  res <- ifelse(cond, as.numeric(names(which(table(card_values(h)) == 4))), 0)
  res
}

full_house <- function(h){  # Three of a kind and a pair
  tab <- sort(as.numeric(table(card_values(h))))
  cond <- F
  if(length(tab) == 2){
    if(tab[1] == 2 & tab[2] == 3){cond <- T} else {cond <- F}
  } else {cond <- F}
  res <- ifelse(cond, max(card_values(h)), 0)
  res
}

flush <- function(h){  # All cards of the same suit
  cond <- same_suit(h)
  res <- ifelse(cond, max(card_values(h)), 0)
  res
}

straight <- function(h){  # All cards are consecutive values
  vals <- sort(card_values(h))
  cond <- length(c(1:5)[vals == vals[1]:(vals[1] + 4)]) == 5
  res <- ifelse(cond, max(card_values(h)), 0)
  res
}

three_of_a_kind <- function(h){  # Three cards of the same value
  tab <- sort(as.numeric(table(card_values(h))))
  cond <- max(tab) == 3
  res <- ifelse(cond, as.numeric(names(which(table(card_values(h)) == 3))), 0)
  res
}

two_pairs <- function(h){  # Two different pairs
  tab <- sort(as.numeric(table(card_values(h))))
  cond <- length(tab) == 3 & min(tab) == 1 & max(tab) == 2
  res <- ifelse(cond, max(as.numeric(names(which(table(card_values(h)) == 2)))), 0)
  res
}

one_pair <- function(h){  # Two cards of the same value
  tab <- sort(as.numeric(table(card_values(h))))
  cond <- max(tab) == 2
  res <- ifelse(cond, as.numeric(names(which(table(card_values(h)) == 2))), 0)
  res
}

high_card <- function(h){
  max(card_values(h))
}

scores <- function(h){
  scores_list <- c()
  scores_list[10] <- royal_flush(h)
  scores_list[9] <- straight_flush(h)
  scores_list[8] <- four_of_a_kind(h)
  scores_list[7] <- full_house(h)
  scores_list[6] <- flush(h)
  scores_list[5] <- straight(h)
  scores_list[4] <- three_of_a_kind(h)
  scores_list[3] <- two_pairs(h)
  scores_list[2] <- one_pair(h)
  scores_list[1] <- high_card(h)
  scores_list
}

player1_sum <- 0
player2_sum <- 0

for(j in c(1:length(poker))){
  h1 <- poker[[j]][[1]]
  h2 <- poker[[j]][[2]]
  
  res1 <- scores(h1)
  res2 <- scores(h2)
  
  res_summary <- c(max(which(res1 != 0)), max(which(res2 != 0)))
  if(res_summary[1] != res_summary[2]){
    winner <- which.max(res_summary)
  } 
  else if (res1[res_summary[1]] == res2[res_summary[2]]){
      winner <- 2
    } 
  else {
    winner <- which.max(c(res1[res_summary[1]], res2[res_summary[2]]))
  }
    
  if(winner == 1){
    player1_sum <- player1_sum + 1 
  } else {
    player2_sum <- player2_sum + 1
  }
}

player1_sum
