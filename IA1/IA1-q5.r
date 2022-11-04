#Assessment IA1 - Q5 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q5: Create an empty factor vector, append values in it and find the sum, mean, product of vector elements using R. Also extract every nth element of the vector:

sum=0
product=1

#New empty factor vector a
a = c()
print(a)

# appending numbers from 1 to 15
a=1:15
print(a)

n = as.integer(readline(prompt = "Enter a number n: "));

#sum, mean & product of vector elements
for(i in a)
{
  sum=sum+i;
  product=product*i;
  if(i%%n==0)
  {
    print(i);
  }
}
mean = sum/length(a)

#Display values
print(paste("Sum: ",sum))
print(paste("Product: ",product))
print(paste("Mean: ",mean))


