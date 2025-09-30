?read.csv()

#method 1: select the file manually
stats <- read.csv(file.choose())
stats

#method 2: set WD and read data
getwd()
setwd("C:\\Users\\ece-lab\\Documents\\r-programming")
getwd()
rm(stats)
stats<- read.csv("Copy of 50_Startups.csv")
stats