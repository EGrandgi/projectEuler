### 0045
Nt <- c(286:100000)
Np <- c(166:100000)
Nh <- c(144:100000)
triangles <- Nt*(Nt+1)/2
pentagonals <- Np*(3*Np−1)/2
hexagonals <- Nh*(2*Nh−1)

for(i in triangles){
  if(i%in%pentagonals & i%in%hexagonals){
    result <- i
    break
  }
}

result
