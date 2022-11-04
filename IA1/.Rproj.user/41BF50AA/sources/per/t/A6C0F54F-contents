#Assessment IA1 - Q7 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q7: Implement a multiplication game. A while loop that gives the user two random numbers from 2 to 12 and asks the user to multiply them. Only exit the loop after five correct answers

  x=5
  while(x > 5)
  {
    a=floor(runif(1, min=2, max=13))
    b=floor(runif(1, min=2, max=13))
    print("Answer the Question:")
    print(paste(a, 'x', b, '= ?'))
    ans = as.integer(readline())
    if ((a*b) == ans)
    {
      print('Correct!')
      x=x-1
    }
    else
    {
      print('Wrong!')
    }
  }

  