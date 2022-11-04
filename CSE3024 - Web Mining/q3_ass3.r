#Assessment 3 - Q3 - CSE3024(ELA) - Naive Bayes Classification
#Jonathan Rufus Samuel (20BCT0332)

install.packages("e1071")
library(e1071)
install.packages("mlbench")
data(HouseVotes84,package="mlbench")
View(HouseVotes84)
summary(HouseVotes84)
nrow(HouseVotes84)

var<-sample(nrow(HouseVotes84),nrow(HouseVotes84)*.8)
Traindata<-HouseVotes84[var,]
Testdata<-HouseVotes84[-var,]

#Building Naive Bayes Model
NB1<-naiveBayes(Class~.,data=Traindata)
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





#Building Naive Bayes Model
NB2<-naiveBayes(Class~.,data=Traindata, laplace = 1)
#Predicting Test Data
pred2<-predict(NB2,Testdata[,-1])
#Evaluation of the Model: Confusion Matrix
data2<-table(pred2,Testdata$Class)
data2

#Accuracy from Confusion Matrix
TP<-data2[1]
FN<-data2[2]
FP<-data2[3]
TN<-data2[4]
Accuracy<-((TP+TN)/(TP+TN+FP+FN))
Misc<-((FP+FN)/(TP+TN+FP+FN))
Precision<-((TP)/(TP+FP))
Sens<-((TP)/(TP+FN))
Spec<-((TN)/(TN+FP))
print(Accuracy, zero.print = ".")
print(Misc, zero.print = ".")
print(Sens, zero.print = ".")
print(Spec, zero.print = ".")

