myData<-read.csv2("C:/Users/nicol/Desktop/2PBS-TP-BLANC.csv")
summary(myData)


#exercice 1.2
#etude facon complete de caracteres qualitatifs
#histogramme
barplot(table(myData$Pâtes),ylab="effectifs",xlab="Pâtes",main="Choix des pâtes")
#camembert
pie(table(myData$Pâtes),main="Choix des pâtes")
#histogramme
barplot(table(myData$Couleur),ylab="effectifs",xlab="Couleurs",main="Couleurs")
#camembert
pie(table(myData$Couleur),main="Couleurs")


#exercice 1.3
#etude facon complete d'un caractere quantitatif discret "nombre"
plot(table(myData$Nombre), type = "h",ylab="effectifs",xlab="Nombres",main="Etude du caractère nombre")
#moyenne
mean(myData$Nombre)
var(myData$Nombre)
#ecart-type
sd(myData$Nombre)
#medianne
median(myData$Nombre)
summary(myData$Nombre)

x<-0
for (i in 1:length(myData$Nombre))
{x<- x+abs(myData$Nombre[i]-mean(myData$Nombre))}
ecartAbsMoyen<-x/length(myData$Nombre)
ecartAbsMoyen
print(ecartAbsMoyen)

x<-0
for (i in 1:length(myData$Nombre))
{x<- x+abs(myData$Nombre[i]-median(myData$Nombre))}
ecartAbsMedian<-x/length(myData$Nombre)
ecartAbsMedian
print(ecartAbsMedian)

prenomsCumul=data.frame(cumsum(table(myData$Nombre)))
prenomsCumul
#en fonction de la taille de la sequence
i<-seq(1,11)
#graphe
plot(i,prenomsCumul[,1],xlab="Nombre",ylab="effectifs cumules",col="blue",main="Effectifs cumulés du caractère nombre")

#diagramme en boite
boxplot(myData$Nombre,main="Nombre")



#exercice 1.4
#etude facon complete d'un caractere quantitatif continu "grandeur"
hist(myData$Grandeur,main="Etude de grandeur",xlab="Grandeur",ylab="Effectifs")
#moyenne
varMoy<-mean(myData$Grandeur)
prEcartType<-mean(myData$Grandeur^2)-mean(myData$Grandeur)^2
varEcartType<-sqrt(prEcartType)
#medianne
varMed<-median(myData$Grandeur)

x<-0
for (i in 1:length(myData$Grandeur))
{x<- x+abs(myData$Grandeur[i]-moy)}
ecartAbsMoyen<-x/length(myData$Grandeur)
print(ecartAbsMoyen)
x<-0
for (i in 1:length(myData$Grandeur))
{x<- x+abs(myData$Grandeur[i]-med)}
ecartAbsMedian<-x/length(myData$Grandeur)
print(ecartAbsMedian)
boxplot(myData$Grandeur,main="Grandeur")

print(varMoy)
print(varMed)
print(varEcartType)



#Exercice 2

#limites entre 1 et 69
x<-seq(1,69)
y<-myData$Population
covaxy<-mean(x*y)-mean(x)*mean(y)
sigmax <- sqrt(mean(x^2)-mean(x)^2)
sigmay <- sqrt(mean(y^2)-mean(y)^2)
coordonnees<-covaxy/(sigmax*sigmay)
coordonnees
print(coordonnees)
#entre 0 et 70 noncompris
plot(x,y,xlim=c(0,70),main="Etude population",xlab="Rang",ylab="Population")
a<-covaxy/(sigmax^2)
b<-mean(y)-a*mean(x)
abline(b,a)
previsionExercice<-a*71+b
print(previsionExercice)

#la prevision pour l'exercice est de


#Exercice 2.2
#
#
#
Y<-log(y)
covaxY<-mean(x*Y)-mean(x)*mean(Y)
sigmax <- sqrt(mean(x^2)-mean(x)^2)
sigmaY <- sqrt(mean(Y^2)-mean(Y)^2)
corrxY<-covaxY/(sigmax*sigmaY)
print(corrxY)
plot(x,y,xlim=c(0,70),main="Etude population",xlab="Rang",ylab="Population")
A<-covaxY/(sigmax^2)
B<-mean(Y)-A*mean(x)
a<-exp(A)
b<-exp(B)
lines(x=seq(from=1,to=69),y=b*a^x)

previsionExercice2<-b*a^71
print(previsionExercice2)

# une autre solution plus simple#
Y<-log(y)
lm(Y~x)
cor(x,Y)
#
#
#



#Exercice 3.1
summary(myData$Opinion)
#au niveau 95%
prop.test(sum(myData$Opinion == "VRAI"), length(myData$Opinion),conf.level = 0.95)
#au niveau 99%
prop.test(sum(myData$Opinion == "VRAI"), length(myData$Opinion),conf.level = 0.99)


#Exercice 3.3
chisq.test(table(myData$Pâtes,myData$Couleur))


