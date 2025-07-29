

myfirstvector <- c(3,45,56,732)
myfirstvector
is.numeric(myfirstvector)
is.integer(myfirstvector)
is.double(myfirstvector)

v2<- c(3L,2L,243L,0L)
is.numeric(v2)
is.numeric(v2)
is.double(v2)

v3<- c("a","b23","hello",7)
v3
is.character(v3)
is.numeric(v3)

seq()#sequence() -like";"
rep()#replicate

seq(1,15)
1:15
seq(1,15,2)
z<- seq(1,15,4)
z

rep(3,50)
d<- rep(3,50)
rep("a",5)

x<-c(80,20)
rep(x,10)

x<-c(80,20)
y<-rep(x,10)
y
