data1 <- read.table("louisvuittonDW.csv",header = TRUE, sep =",")
data1
library(nlme)
fm <- gls(Y ~ X, corr=corARMA(p=1),data = data1)
summary(fm)