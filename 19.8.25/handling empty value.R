fin <- read.csv(file.choose())
fin
setwd("C:\\Users\\ece-lab\\Downloads\\r programming")
getwd()
fin[!complete.cases(fin),]
#filtering using$
fin$Salary==NA
#filtering using is na()for missing data
is.na(fin$Salary)
fin[is.na(fin$Salary),]
fin_backup<-fin
fin[!complete.cases(fin),] 
fin[is.na(fin$salary),]
fin[!is.na(fin$salary),]#opposite
fin<-fin[!is.na(fin$salary),]
fin
fin[!complete.cases(fin),]
dataset=read.csv('Copy of 50_Startups.csv')
fin <- read.csv(file.choose())
fin
fin$age=ifelse(is.na(fin$age),
               ave(fin$age,FUN=function(x)mean(x, na,rn=TRUE)),
               fin$age
fin$Country=factor(fin$Country,levels = c('France','spain','Germany'),
                   labels = c(1, 2, 3))