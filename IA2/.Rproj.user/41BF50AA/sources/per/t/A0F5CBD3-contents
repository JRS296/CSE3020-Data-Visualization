#Assessment IA2 - Q8 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q8: Write a R program to compute the Armstrong number and Fibonacci series

#Armstrong Number Check
num = as.integer(readline(prompt="Enter a number: "))
sum = 0
temp = num
while(temp > 0) {
  digit = temp %% 10
  sum = sum + (digit ^ 3)
  temp = floor(temp / 10)
}
if(num == sum) {
  print(paste(num, "is an Armstrong number"))
} else {
  print(paste(num, "is not an Armstrong number"))
}

#Fibonacci Series
x = as.integer(readline(prompt="Enter number of terms: "))
Fibonacci <- numeric(x)
Fibonacci[1] <- 0
Fibonacci[2] <- Fibonacci[3] <- 1
for (i in 4:x) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("Fibonacci numbers:")
print(Fibonacci)

