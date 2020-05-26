getwd()
setwd("C:/Users/hooverjh/Desktop") # put the path to your working directory here
FL_census <- read.csv("psam_h12.csv")
summary(FL_census)
mydata <- FL_census

library(Hmisc)
describe(mydata)
typeof(mydata$HINCP)

writemydata <- describe(mydata)

library(psych)
describe(mydata)
writemydata <- describe(mydata)

hist(mydata$HINCP)
boxplot(mydata$HINCP)

x <- mydata$HINCP
y <- mydata$VALP
cor(x,y, use="complete.obs")

pairs(~HINCP+VALP, data=mydata,
      main="Scatterplot Matrix")

library(hexbin)
x <- mydata$HINCP
y <- mydata$VALP
bin <-hexbin(x,y, xbins=75)
plot(bin, main="Hex Binning", xlab="Income", ylab="Property Value" )

# 4 figures arranged in 4 rows and 1 columns
attach(mydata)
par(mfrow=c(4,1))
hist(HINCP, main="HINCP")
hist(VALP, main="VALProp")
hist(VEH, main="Vehicles")
hist(BDSP, main="Bedrooms")

# 4 figures arranged in 4 rows and 1 columns
attach(mydata)
par(mfrow=c(4,1))
hist(HINCP, main="HINCP")
hist(VALP, main="VALProp")
hist(VEH, main="Vehicles")
hist(BDSP, main="Bedrooms")

attach(mydata)
par(mfrow=c(1,4))
boxplot(HINCP, main="HINCP")
boxplot(VALP, main="VALProp")
boxplot(VEH, main="Vehicles")
boxplot(BDSP, main="Bedrooms")


