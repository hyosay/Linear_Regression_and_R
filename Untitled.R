install.packages('UsingR')
library(UsingR)
data(galton)
str(galton)
.
plot(galton$parent, galton$child,
     xlab='father ki', ylab='sun ki',
     xlim=c(60, 75), ylim= c(60, 75),
     main='Height of Father and Son')


abline(v=mean(galton$parent), col=2, lty=2)
abline(h=mean(galton$child), col=2, lty=2)



f.mean <- mean(galton$parent)
f.mean <- mean(galton$child)
cov.num <- sum( (galton$parent-f.mean) * (galton$child - f.mean) )
(cov.xy <- cov.num / (nrow(galton) - 1))
cov(galton$parent, galton$child)

(r.xy <- cov.xy / (sd(galton$parent) * sd(galton$child)))
cor(galton$parent, galton$child)
cor.test(galton$parent, galton$child)