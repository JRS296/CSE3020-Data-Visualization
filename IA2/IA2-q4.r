#Assessment IA2 - Q4 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q4: Write a R program to create a list of random numbers in normal distribution and count occurrences of each value

n = floor(rnorm(100, 1, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)