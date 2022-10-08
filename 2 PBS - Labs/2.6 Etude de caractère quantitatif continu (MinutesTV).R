read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")

Labs$MinutesTV
table(Labs$MinutesTV)
summary(Labs$MinutesTV)
mean(Labs$MinutesTV)
median (Labs$MinutesTV)
quantile(Labs$MinutesTV)
sd(Labs$MinutesTV)
var(Labs$MinutesTV)

#On trie les observations dans l'ordre#
sort(Labs$MinutesTV)
#separation de la fenetre graphique# 
#pour placer 2 graphes horizontalement#
par(mfrow=c(1,2))

hist(Labs$MinutesTV ,main="Histogramme des Fréquences",freq=TRUE)
hist(Labs$MinutesTV, main="Histogramme des densités",freq=FALSE)

#diagramme en boîte ou boîte à moustaches#
boxplot(Labs$MinutesTV)

#Sur le même principe, on définit les déciles#
#qui découpent la série des observations en 10#
seq(0,1,by=0.1)
quantile(Labs$MinutesTV,probs=seq(0,1,by=0.1))

