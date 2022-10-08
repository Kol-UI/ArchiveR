read.csv2("D:/Cours/2 PBS - Probabilities and Statistics/Labs-2PBS.csv", sep=";")

Labs <- read.csv2("D:/Cours/2 PBS - Probabilities and Statistics/Labs-2PBS.csv", sep=";")


Labs
Labs <- read.csv2("D:/Cours/2 PBS - Probabilities and Statistics/Labs-2PBS.csv",na.string ="")

str(Labs)
summary(Labs)
summary(Labs$Statut)
table(Labs$Satut)
install.packages("binom")
library(binom)
144*0.54

binom.confint(77,76,144,methode="exact")
binom.confint(77,76,144,methode="exact",conf.level = 0.99)

