read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs
Labs$Age
table(Labs$Age)
summary((Labs$Age))

#moyenne, médiane, quantile, écart-type, variance#
mean(Labs$Age)
median (Labs$Age)
quantile(Labs$Age)
sd(Labs$Age)
var(Labs$Age)

#nuage de point#
plot(Labs$Age)

#diagramme en bâtons#
plot(table(Labs$Age))
plot(table(Labs$Age), xlab="observations discrètes",ylab ="effectis", main="diagramme en bâtons")

#Courbe des fréquences cumulées
plot(ecdf(Labs$Age), xlab="age",ylab = "fréquences cumulées", main="Courbe des fréquences cumulées")


#Tracer un histogramme#
hist(Labs$Age)
hist(Labs$Age, probability = TRUE)
hist(Labs$Age, freq = TRUE)
hist(Labs$Age, probability = TRUE, ylim = c(0,0.025), col = rainbow(15))
h=hist(Labs$Age, probability = TRUE)
h
lines(density((Labs$Age)),col="red",lwd=2)
tranches<-cut(Labs$Age,breaks = c(0,25,45,65,100))
levels(tranches)
summary(tranches)
hist(Labs$Age, freq = FALSE ,breaks = c(0,25,45,65,100),main = "histogramme des frequences", col = rainbow(15))
                
                   