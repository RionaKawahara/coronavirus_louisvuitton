data1 <- read.table("louisvuittonDW.csv",header = TRUE, sep =",")
data1
plot(data1$dX, data1$dY,xlab="アメリカの新型コロナウイルス新規感染者数",ylab="LouisVuitton株価",main="自己相関の除去")
fm2 <- lm(dY ~ dX, data = data1)
abline(fm2)
summary(fm2)
dwtest(fm2)