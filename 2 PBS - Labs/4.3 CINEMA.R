install.packages("binom")
library(binom)
144*0.54
binom.confint(77.76,144,method="exact")

binom.confint(77.76,144,method="exact", conf.level = 0.99)
?binom.confint
