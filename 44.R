library(readxl)
mydata = read_excel('table3.9_weight.xlsx')
attach(mydata)
str(mydata)
head(mydata)

cor.test(x, y)


out1<-lm(y - 0+x)
anova(out1)
summary(out1)

par(mfrow=c(2, 2))
plot(out1)

out2<-lm(y - x+I(x^2))
anova(out2)
plot(out2)

out3<- lm(y - x+I(x^2)+I(x^3))
anova(out3)
summary(out3)

par(mfrow=(c(2, 2)))
plot(out3)
