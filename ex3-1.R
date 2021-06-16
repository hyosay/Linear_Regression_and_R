install.packages('UsingR')
library(UsingR)
data(galton); attach(galton)
str(galton)
head(galton)

plot(parent, child, xlab = 'father', ylab='sun',
     xlim = c(60, 75), ylim = c(60, 75))
abline(v = mean(parent), col = 2, lty = 2)
abline(h = mean(child) ,col = 2, lty = 2)

f.mean <- mean(parent)
s.mean <- mean(child)
cov(parent, child)
cor(parent, child)
cor.test(parent, child)


fit <- lm(child ~ parent)
summary(fit)
plot(fit)
anova(fit)


p = data.frame(parent = c(74.5))
predict(fit, newdata = p)

par(mfrow = c(2, 2))
plot(fit)

library(lmtest)
dwtest(fit)



