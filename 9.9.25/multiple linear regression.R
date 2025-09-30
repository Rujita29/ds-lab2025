dataset=read.csv('50_Startups.csv')
dataset= dataset[,3:5]
#splitting the dataset into the training set adn test
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio=0.75)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
training_set[,1:2]=scale(training_set[,1:2])
test_set[,1:2]=scale(test_set[,1:2])