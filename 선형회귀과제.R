y = c(5, 6 ,8, 9, 12)
x1 = c(1, 200, -30, 900, 506)
x2 = c(1004, 805, 1058, 200, 505)
x3 = c(6.0, 7.3, 11.3, 13.0, 13.1)

newdata <- data.frame(y,x1,x2,x3)


fit1 <- lm(y ~ .,data = newdata)
summary(fit1)

fit2 <- lm(y ~ x1 + x2,data = newdata )
summary(fit2)

install.packages('leaps')
library(leaps)

ls <- regsubsets(y ~., data=newdata, nbest = 7)
ls
summary(ls)


x <- cbind(x1, x2, x3)

lp <- leaps(x, y, method="Cp") # 독립변수의 수와 비슷할수록 좋은 모델이다 
lp


library(car)

subsets(ls, statistic = 'rsq')
subsets(ls, statistic='cp')
plot(ls, scale='r2')
