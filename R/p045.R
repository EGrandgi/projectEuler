### 0045
Nt <- c(286:1e+05)
Np <- c(166:1e+05)
Nh <- c(144:1e+05)
triangles <- Nt*(Nt+1)/2
pentagonals <- Np*(3*Np−1)/2
hexagonals <- Nh*(2*Nh−1)

for (i in triangles) {
    if (i %in% pentagonals & i %in% hexagonals) {
        result <- i
        break
    }
}

result
