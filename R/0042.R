### 0042

library('foreach')

path <- ''
words <- names(read.delim2(paste(path,'p042_words.txt',sep=''),sep=','))
words <- unique(gsub('.','',words,fixed = T))
corresp <- data.frame(ind=c(1:26),let=letters)

triangles <- foreach(n=c(1:(max(nchar(words))*26)),.combine=c) %do% c(0.5*n*(n+1))
result <- 0

for(i in 1:length(words)){
  word <- words[i]
  sum<-0
  
  letters <- tolower(strsplit(word,'')[[1]])
  
  for(j in 1:length(letters)){
    sum <- sum+corresp$ind[corresp$let==letters[j]]
  }
  if(sum%in%triangles){vect_result<-result<-result+1}
}

result
