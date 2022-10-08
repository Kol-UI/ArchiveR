read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")
summary(Labs)
minutesTV <- Labs$MinutesTV
minutesTV
mean(minutesTV)
t.test(minutesTV)$conf.int
t.test(minutesTV, conf.level = 0.99)$conf.int

lire<-Labs$MinutesL
lire
summary(lire)
mean(lire)
t.test(lire)$conf.int
t.test(lire,conf.level = 0.99)$conf.int
