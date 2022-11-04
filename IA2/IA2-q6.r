#Assessment IA2 - Q6 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q6: Write a R program to create bell curve of a random normal distribution

n = floor(rnorm(100000000, 500, 100))
t = table(n)
plot(t)

#Cleaner Bell Plot - Larger Random Normal Distribution set size