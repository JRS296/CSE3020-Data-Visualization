#Assessment IA1 - Q3 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q3: Write a R program to print the multiplication table of a number from 1 to 15

num = as.integer(readline(prompt = "Enter any number for it's corresponding timestable: "));

for(i in 1:15) {
  print(paste(num,'x', i, '=', num*i))
}