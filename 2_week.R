seq(100, 1, by= -2)
var1 <- c(1: 100)
var1
str5 <-  c('hello', 'world', 'is', 'good')
str5
paste(str5, collapse='')

# 그래프 툴
install.packages('ggplot2')
library('ggplot2')

x <- c('a', 'd', 'c', 'c', 'd')
x
qplot(x, col='red', main= 'qplot')
#car datasets
library("car")

a = mpg[1:10]
a
qplot(data = a, x= manufacturer, y=drv , geom= 'boxplot', colour='red')


#1
score = c(80, 60, 70, 50, 90)
score

#2
mean(score)

summary(score)
#3
mean_score = mean(score)


name <- c('김지훈', '이유진', '박동현', '김민지')
eng <-  c(90, 20, 80, 15)
math <- c(90, 10, 100, 20)

ls <- data.frame(name, eng, math)
ls
class <- c(1, 2, 1, 2)

# merge_data
ls <- data.frame(name, eng, math, class)

#data frame check
summary(ls)
head(ls)
str(ls)
mean(ls$eng)

#data visualization
plot(ls)

fit <- lm(class ~ eng + math, data= ls)
summary(fit)
