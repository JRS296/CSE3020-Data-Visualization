#Assessment IA1 - Q1 - CSE3020(ELA) 
#Jonathan Rufus Samuel (20BCT0332)

#Q1: Create Data frames which contain details of 10 employees and display summary of the data

Employees = data.frame(Name=c("Ana B","Daniel R","Katherine S", "James R","Lauro M","Andrew G","Henry C","Tom S","Polly G","Arthur S"),
                       Gender=c("M","M","F","M","M","M","M","M","F","M"),
                       Age=c(23,22,25,26,32,19,26,34,45,31),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT","Programmer","Manager","Exective","deputy CEO","Chairman"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","670-77-576","452-34-2346","123-43-779","356-24-433","123-38-987","679-77-572"))

print("Summary of the data:")                      
print(summary(Employees))


