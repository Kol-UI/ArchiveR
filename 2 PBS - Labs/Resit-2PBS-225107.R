myData<-read.csv2("C:/Users/nicol/Desktop/Resit-2PBS/2PBS-Data-Resit.csv")
summary(myData)



##EXERCICE 1

##moyenne
moy<-mean(myData$Deaths)
##variance
vari<-mean(myData$Deaths^2)-mean(myData$Deaths)^2
vari2<-var(myData$Deaths)
vari3<-mean(myData$Years^2)-mean(myData$Years)^2
vari4<-var(myData$Years)
##ecart type
ecartType2<-sqrt(vari2)
##mediane
med<-median(myData$Deaths)
##ecart absolu moyen
a<-0
for (i in 1:length(myData$Deaths))
{a<-a+abs(myData$Deaths[i]-moy)}
ecartAbsMoy<-temp/length(myData$Deaths)
##ecart absolu median de mort
b<-0
for (i in 1:length(myData$Deaths))
{b<- b+abs(myData$Deaths[i]-med)}
ecartAbsMed<-temp/length(myData$Deaths)

##moyenne de mort = 1146.22
moy
##variance de Deaths = 204327.8
vari2
##variance de Years = 107.9
vari4
##ecart type de mort = 452
ecartType2
##mediane de mort = 1132.5
med
##ecart absolu moyen de mort = 355
ecartAbsMoy
##ecart absolu median de mort = 355
ecartAbsMed

##diagramme en baton
barplot(table(myData$Deaths),ylab="Nombre mort",xlab="Mort",main="Diagramme des morts")
##camembert
pie(table(myData$Deaths),main="Camembert des morts")
##fr�quences cumul�es
plot(ecdf(myData$Deaths), xlab="Morts",ylab = "fr�quences cumul�es", main="Courbe fr�quences cumul�es des morts")
##boite � moustache pour Deaths
boxplot(myData$Deaths,main="Boite � moustache de Deaths")
##histogrammes de fr�quence et de densit� de mort
hist(myData$Deaths,xlab="Nombre de mort",ylab="fr�quence",main="Histogramme fr�quences",freq=TRUE)
hist(myData$Deaths,xlab="Nombre de mort",ylab="Densit�", main="Histogramme densit�s",freq=FALSE)




##EXERCICE 2

ordonn�es<-myData$Deaths
abscisses<-seq(1,36)
##covariance
covar<-mean(ordonn�es*abscisses)-mean(ordonn�es)*mean(abscisses)
##covariance = 4628.5
covar<-cov(ordonn�es,abscisses)
##les ecarts types des abscisses et ordonn�es dans le but de faire la correlation
##ecarts types des ordonn�es
ecartType1<-sqrt(mean(ordonn�es^2)-mean(ordonn�es)^2)
ecartType1<-sd(ordonn�es)
##ecarts types des abscisses
ecartType2<-sqrt(mean(abscisses^2)-mean(abscisses)^2)
ecartType2<-sd(abscisses)
correlationXY<-covar/(ecartType1*ecartType2)
##correlation = 0.97
##graphique dans le but de voir la courbe de regression
plot(abscisses,ordonn�es,xlim=c(0,36),main="Graphique exercice 2",xlab="Cat�gories",ylab="Morts")
e<-covar/(ecartType2^2)
f<-mean(ordonn�es)-e*mean(abscisses)
##courbe de regression
abline(f,e)
##la prevision
pre<-e*102+f
##pr�vision = 4628



##EXERCICE 3

##intervalles de confiance pour 95% et 99% avec estimation de 896/5627
summary(myData$Deaths)
binom.test(896,5627,p=896/5627, conf.level = 0.95)$conf.int
binom.test(896,5627,p=896/5627, conf.level = 0.99)$conf.int
##l'intervalle de confiance pour 95% = [0.1497618;0.1690575]
##l'intervalle de confiance pour 99% = [0.1468725;0.1721735]

