
setwd("I:/develope/R")
getwd() 

pet <- read.csv("PET_PRI_SPT_S1_D.csv")
head(pet)
library(xts)  # 加载需要的包  
library(ggplot2)
d <- xts(pet$Cushing, as.Date(pet$Date, format='%Y/%m/%d'))
d
head(d)

TRD <-read.csv("TRD.csv")
head(TRD)
trd <- xts(TRD$value, as.Date(TRD$date, format='%Y/%m/%d'))
head(trd)

#ggplot(d,type='l',main="title")

plot(d,type='l',main="title" ) 
par(new = TRUE)

plot(trd,type='l',main="title") 

x=ts( d,frequency=12,start=c(1986,1),end=c(2018,3))
y=ts( trd,frequency=12,start=c(1900,4),end=c(2018,2))
ts.plot(x,y,gpars=list(col=c("blue","red")))


