library(ggplot2)
library(dplyr)
midwest <-as.data.frame(ggplot2::midwest)
midwest

new_midwest <- midwest
new_midwest <- rename(new_midwest, total = poptotal)
new_midwest <- rename(new_midwest, asian = popasian)
new_midwest

new_midwest$asian_from_total <- (new_midwest$asian / new_midwest$total) * 100
hist(new_midwest$asian_from_total)
View(new_midwest)

mean_asian <- mean(new_midwest$asian_from_total)


new_midwest$test <- ifelse(mean_asian > new_midwest$asian_from_total, "small", "large")
new_midwest$test

qplot(new_midwest$test)
table(new_midwest$test)
