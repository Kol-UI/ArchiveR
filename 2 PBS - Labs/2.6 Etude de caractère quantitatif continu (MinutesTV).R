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

hist(Labs$MinutesTV ,main="Histogramme des Fr�quences",freq=TRUE)
hist(Labs$MinutesTV, main="Histogramme des densit�s",freq=FALSE)

#diagramme en bo�te ou bo�te � moustaches#
boxplot(Labs$MinutesTV)

#Sur le m�me principe, on d�finit les d�ciles#
#qui d�coupent la s�rie des observations en 10#
seq(0,1,by=0.1)
quantile(Labs$MinutesTV,probs=seq(0,1,by=0.1))

