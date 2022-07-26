read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs
Labs$Age
table(Labs$Age)
summary((Labs$Age))

#moyenne, m�diane, quantile, �cart-type, variance#
mean(Labs$Age)
median (Labs$Age)
quantile(Labs$Age)
sd(Labs$Age)
var(Labs$Age)

#nuage de point#
plot(Labs$Age)

#diagramme en b�tons#
plot(table(Labs$Age))
plot(table(Labs$Age), xlab="observations discr�tes",ylab ="effectis", main="diagramme en b�tons")

#Courbe des fr�quences cumul�es
plot(ecdf(Labs$Age), xlab="age",ylab = "fr�quences cumul�es", main="Courbe des fr�quences cumul�es")


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
                
                   