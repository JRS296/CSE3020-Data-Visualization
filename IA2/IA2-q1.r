#Assessment IA2 - Q1 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q1: Create a vector of the values of e x cos(x) at x = 3, 3.1, 3.2, . . . , 6

x <- seq(3,6,by = 0.1)
expr <- exp(x) * cos(x)

print("Value of the data:")                      
print(expr)
