# Q1
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)

displ_4 <- mpg %>% filter(displ <= 4)
displ_5 <- mpg %>%  filter(displ >= 5)

mean(displ_4$displ)
mean(displ_5$displ)
# 배기량이 5 이상인 자동차가 연비가 5.578947이므로 더 높다.

# Q2
audi <- mpg %>% filter(manufacturer == 'audi')

toyota <- mpg %>% filter(manufacturer == 'toyota')

mean(audi$cty)
mean(toyota$cty)
# 토요타의 도시연비가 18.52941로 더 높다.

# Q3

hwy_3 <- mpg %>% filter(manufacturer %in% c('chevrolet', 'ford', 'honda'))
mean(hwy_3$hwy)
