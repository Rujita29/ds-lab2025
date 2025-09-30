#k-mean clustering
dataset <- read.csv("Mall_Customers.csv")
x <- dataset[4:5]

#using the elbow method to find the optimal mo.of cluster
set.seed(6)
wcss <- vector()
for (i in 1:10) wcss[i] <- sum(kmeans(x,i)$withinss)
plot(1:10,wcss,type="b",main=paste('cludter of client'), xlab="number of cluster",ylab="WCSS")

#applying k-means to the dataset
           

#visualising the cluster
library(cluster)
clusplot(x,
         kmeans$cluster,
         lines=0,
         shade=TRUE,
         color=TRUE,
         labels=2,
         ploychar=FALSE,
         span=TRUE,
         main=paste('clusters of clients'),
         xlab="annual income",
         ylab="spending score"
         )