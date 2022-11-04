#Assessment IA2 - Q2 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q2: Consider five cylinders lengths: 2.1, 3.4, 2.5, 2.7, 2.9 and the diameters are: 0.3, 0.5, 0.6, 0.9, 1.1. Read these data into two vectors. Calculate the correlation between lengths and diameters. Calculate the volumes so that their units are in cubic millimetres. Calculate the mean, standard deviation, and coefficient of variation of these new volumes

a = c(2.1, 3.4, 2.5, 2.7, 2.9)
b = c(0.3, 0.5, 0.6, 0.9, 1.1)

co = cor(a,b)
print(co)

vol=c()

for (i in 1:length(a))
  vol[i] <- 3.14 * (b[i]/2) * a[i]
  
print(vol)