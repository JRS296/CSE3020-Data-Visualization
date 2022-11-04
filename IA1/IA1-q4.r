#Assessment IA1 - Q4 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q4: Write a R program to print the numbers from 1 to 100 and print "DATA" for multiples of 2, print "VISUALIZATION" for multiples of 4, and print "DATA VISUALIZATION" for multiples of both

name = "Jonathan Rufus Samuel"; 
p1 = "DATA"; 
p2 = "VISUALIZATION"; 
p3 = "DATA VISUALIZATION"; 
for(i in 1:100) 
{
  if (i%%2==0 && i%%4==0)
  {
    print(paste( i, '=', p3))
  }
  else if (i%%2==0)
  {
    print(paste( i, '=', p1))
  }
  else if (i%%4==0)
  {
    print(paste( i, '=', p2))
  }
  else
  {
    print(paste( i ))
  }
}


