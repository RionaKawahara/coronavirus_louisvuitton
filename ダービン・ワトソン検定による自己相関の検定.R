data1 <- read.table("louisvuitton.csv",header = TRUE, sep =",")
data1
plot(data1$X, data1$Y,xlab="アメリカの新型コロナウイルス新規感染者",ylab="LouisVuitton株価",main="DWによる自己相関の有無の検定")
fm1 <- lm(Y ~ X, data = data1)
summary(fm1)
abline(fm1)
library(lmtest)
dwtest(fm1)