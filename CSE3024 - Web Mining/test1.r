#Assessment 3 - Q3 - CSE3024(ELA) - Naive Bayes Classification
#Jonathan Rufus Samuel (20BCT0332)

# Libraries
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)


data <- ("C:/Users/jonat/Downloads/binary.csv")
#Could not clean and Properly Access audiology.data file, could not locate attribute "decision attribute"
#Therefore New dataset "binary.csv" is chosen, Naive Bayes performed over class "Admit" and "Rank"
xtabs(~admit + rank, data = data)
data$rank <- as.factor(data$rank)
data$admit <- as.factor(data$admit)

# Visualization of Selected Data (Optional)
pairs.panels(data[-1])
data %>% 
  group_by(admit) %>%
  ggplot(aes(x=admit, y=gre, fill=admit)) +
  geom_boxplot() 

data %>% 
  ggplot(aes(x=admit, y=gpa, fill=admit)) +
  geom_boxplot() +
  ggtitle('Box Plot') 

data %>%
  ggplot(aes(x=gre, fill=admit)) +
  geom_density(alpha=0.8, color='black') +
  ggtitle('Density Plot') 

data %>%
  ggplot(aes(x=gpa, fill=admit)) +
  geom_density(alpha=0.8, color='black') +
  ggtitle('Density Plot') 


#Spliting of data into Training (80%) and Testing (20%) datasets
set.seed(1234)
ind <- sample(2,nrow(data),replace=TRUE, prob=c(0.8,.2))
train <- data[ind==1,]
test <- data[ind==2,]

# Naive Bayes Classification Begins
model <- naive_bayes(admit ~ ., data = train, laplace = 1)
model
plot(model)
 train %>% filter(admit=="0") %>% 
  summarize(mean(gre), sd(gre))

# Prediction 1
p <- predict(model, train, type= 'prob')
head(cbind(p, train))

# Misclassification error - train data i.e. prediction 2
p1 <- predict(model, train)
(tab1 <- table(p1, train$admit))
1 - sum(diag(tab1))/ sum(tab1)

# Misclassification error - test data i.e. prediction 3
p2 <- predict(model, test)
(tab2 <- table(p2, test$admit))
1 - sum(diag(tab2))/ sum(tab2)