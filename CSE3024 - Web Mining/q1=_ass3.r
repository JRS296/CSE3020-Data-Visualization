#Assessment 3 - Q3 - CSE3024(ELA) - Naive Bayes Classification
#Jonathan Rufus Samuel (20BCT0332)

library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
library(e1071)
install.packages("mlbench")
#data<-("C:/Users/jonat/Downloads/glass.csv", Header = T)
#Could not clean and Properly Access audiology.data file, could not locate attribute "decision attribute"

data <- Glass
View(Glass)
summary(Glass)
str(data)
xtabs(~Na+Ca, data = data)

set.seed(1234)
ind <- sample(2, nrow(data), replace=T, prob = c(0.8,0.2))
Traindata <- data[ind == 1,]
Testdata <- data[ind == 2,]
print(Traindata)

#Visualization


#Building Naive Bayes Model
NB1<-naiveBayes(type~.,data=Traindata, type ='class')
#Predicting Test Data
pred1<-predict(NB1,Testdata[,-1])
#Evaluation of the Model: Confusion Matrix
data1<-table(pred1,Testdata$Class)
data1

#Accuracy from Confusion Matrix
TP<-data1[1]
FN<-data1[2]
FP<-data1[3]
TN<-data1[4]
Accuracy<-((TP+TN)/(TP+TN+FP+FN))
Misc<-((FP+FN)/(TP+TN+FP+FN))
Precision<-((TP)/(TP+FP))
Sens<-((TP)/(TP+FN))
Spec<-((TN)/(TN+FP))
print(Accuracy, zero.print = ".")
print(Misc, zero.print = ".")
print(Sens, zero.print = ".")
print(Spec, zero.print = ".")






