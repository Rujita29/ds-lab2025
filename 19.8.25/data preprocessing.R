?read.csv()
fin<- read.csv(file.choose())
fin
# here missing value handling + Encoding 

setwd("C:\\Users\\ece-lab\\Desktop")
getwd()


fin[!complete.cases(fin),]

#filtering using $
fin$Salary==NA


#removing records with missing data
fin_backup<-fin
fin[!complete.cases(fin),]

fin[is.na(fin$Salary),]


fin<-fin[!is.na(fin$Salary),]
fin

#Removing NA in Age column
fin$Age = ifelse(is.na(fin$Age),ave(fin$Age, FUN=function(x) mean(x,na.rm=TRUE)),fin$Age)
fin




# Encoding Categorical data
fin$Country = factor(fin$Country,
                     levels=c('France','Spain','Germany'),
                     labels=c(1,2,3))

fin$Purchased  = factor(fin$Purchased,
                        levels=c('No','Yes'),
                        labels=c(0,1))

fin
#splitting the dataset into the training set adn test
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(fin$Purchased, SplitRatio=0.8)
training_set=subset(fin,split==TRUE)
test_set=subset(fin,split==FALSE)
training_set
test_set
split
#feature scaling
training_set[,2:3]=scale(training_set[,2:3])
training_set[,2:3]
test_set[,2:3]=scale(test_set[,2:3])
test_set[,2:3]