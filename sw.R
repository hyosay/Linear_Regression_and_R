install.packages('dplyr')
library('dplyr')

df_old <- data.frame(var1=c(1, 2, 3),
                     var2=c(4, 5, 6),
                     var3=c(7, 8, 9))
df_new <- df_old
df_new
library(ggplot2)



df_old$v4 <- (df_old$var1 + df_old$var2 + df_old$var3) / 3
df_old
mpg <- ggplot2::mpg
mpg
mpg$mean <- (mpg$cty + mpg$hwy)/2
mpg

pf <- ifelse(mpg$mean > 20,"big","small")
head(mpg$mean)
pf

mpg$pf <- pf
head(mpg,20)
table(mpg$pf)
qplot(mpg$pf)

dim(mpg)

midwest <- ggplot2::midwest
midwest

new_midwest <- midwest
new_midwest
new_midwest <- rename(new_midwest, total=poptotal)
new_midwest
new_midwest <- rename(new_midwest,asian=popasian)
new_midwest
new_midwest$people <- new_midwest$asian/new_midwest$total
new_midwest
View(new_midwest)


hist(new_midwest$people)

new_midwest$size <- ifelse(mean(new_midwest$people) > new_midwest$people, 'small', 'large')
mean(new_midwest$people)
new_midwest %>% select(people, size)

qplot(new_midwest$size)
