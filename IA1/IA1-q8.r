#Assessment IA1 - Q8 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q8: Using for loop simulate the flip a coin twenty times, keeping track of the individual outcomes (1 = heads, 0 = tails) in a vector that you pre-allocate

coin <- c('heads', 'tails')
flip <- sample(coin, size=20, replace=TRUE)

ans <- vector(length = 0, mode = "integer")
for (i in flip) {
  ans <- c(ans, i)
}
print(ans)