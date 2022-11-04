#Assessment IA1 - Q6 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q6: Use a nested for loop (a for loop inside a for loop) that produces the following matrix, pre-allocate the matrix with NA values

vector1 <- c(NA, NA, NA, NA, NA)
vector2 <- c(NA, NA, NA, NA, NA)

# Take these vectors as input to the array.
arr <- array(c(vector1, vector2), dim = c(5, 5))
print(arr)

d = 

for(i in 1:5)
{
  for(j in 1:5)
  {
    x=abs(j-i)
    arr[i,j] = x
    print(arr[i,j])
  }
}

print(arr)

