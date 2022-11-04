#Assessment IA2 - Q3 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q3: Create an empty matrix 5*5 and do the following operations:
#a. Perform elementwise matrix multiplication 
#b. Find the power of a matrix. 
#c. Modify any two elements in the matrix. 
#d. Rotate the matrix to 90 degrees clockwise. 
#e. Access the matrix elements using character index

library(expm)
vector1 <- c(NA, NA, NA, NA, NA)
vector2 <- c(NA, NA, NA, NA, NA)

# Take these vectors as input to the array.
arr <- array(c(vector1, vector2), dim = c(5, 5, 2))
print(arr)
  for (k in 1:2)
  {
    for(i in 1:5)
    {
      for(j in 1:5)
      {
        x=floor(runif(1, min=2, max=15))
        arr[i,j,k] = x
      }
    }
  }
print(arr)

print("Answer A:")
print(arr[,,1]*arr[,,2])

print("Answer B:")
print(arr[,,1]%*%arr[,,1])

print("Answer C:")
arr[2,4,1] = 0
arr[5,3,1] = 0
print(arr[,,1])

print("Answer D:")
rotate = t(apply(arr[,,1], 2, rev))
print(rotate)

print("Answer E:")
print(arr[1,3,1])