dataset=read.csv('Social_Network_Ads.csv')
dataset= dataset[3:5]

dataset$Purchased=factor(dataset$Purchased,levels = c(0,1))
#splitting the dataset into the training set adn test
install.packages('caTools')
library(caTools)
set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio=0.75)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)
training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-3])

#fitting k-nn to the training set
library(class)
y_pred=knn(train = training_set[, -3],
           test = test_set[, -3],
           cl = training_set[, 3],
           k = 5)

classifier = glm(formula = Purchased ~.,
                 family = binomial,
                 data = training_set)
#making the confusion matrix
cm = table(test_set[,3], y_pred)
#visualisisng the training set result
install.packages(ElemStatLearn)
library(ElemStatLearn)
set = training_set
X1 = seq(min(seq[, 1]) - 1,max(set[, 1]) + 1, by - 0.01)
X2 = seq(min(seq[, 2]) - 1,max(set[, 2]) + 1, by - 0.01)
grid_set = expamd.grid(X1,X2)
colnames(grid_set) = c('Age','EstimateSalaey')
y_gride= predict(classifier.newdata = gride_set)
plot(set[, -3],
     main = 'K-NN(training_set)',
     xlab='Age',ylab='Estimated Salary',
     xlim=range(X1),ylim=range(X2))
contour(X1,X2,matrix(as,numeric(y_grid),length(X1),length(X2),add=TRUE))
points(grid_set,pch='.', col=ifelse(y_grid==1,'springgreen3','tomato'))
points(set,pch =21,bg =ifelse(set[,3]==1,'green4','red3'))

#visualisisng the test set result
install.packages(ElemStatLearn)
library(ElemStatLearn)
set = test_set
X1 = seq(min(seq[, 1]) - 1,max(set[, 1]) + 1, by - 0.01)
X2 = seq(min(seq[, 2]) - 1,max(set[, 2]) + 1, by - 0.01)
grid_set = expamd.grid(X1,X2)
colnames(grid_set) = c('Age','EstimateSalaey')
y_gride= predict(classifier.newdata = gride_set)
plot(set[, -3],
     main = 'K-NN(training_set)',
     xlab='Age',ylab='Estimated Salary',
     xlim=range(X1),ylim=range(X2))
contour(X1,X2,matrix(as,numeric(y_grid),length(X1),length(X2),add=TRUE))
points(grid_set,pch='.', col=ifelse(y_grid==1,'springgreen3','tomato'))
points(set,pch =21,bg =ifelse(set[,3]==1,'green4','red3'))