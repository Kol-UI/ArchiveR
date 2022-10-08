myData<-read.csv2("C:/Users/nicol/Desktop/2PBS-TP-BLANC.csv")
summary(myData)
##exercice 1.2

barplot(table(myData$Pâtes),ylab="effectifs",xlab="Pâtes",main="Choix des pâtes")
pie(table(myData$Pâtes),main="Choix des pâtes")

barplot(table(myData$Couleur),ylab="effectifs",xlab="Couleurs",main="Couleurs")
pie(table(myData$Couleur),main="Couleurs")

##exercice 1.3

plot(table(myData$Nombre), type = "h",ylab="effectifs",xlab="Nombres",main="Etude du caractère nombre")
moy<-mean(myData$Nombre)
var<-mean(myData$Nombre^2)-mean(myData$Nombre)^2
ecartType<-sqrt(var)
med<-median(myData$Nombre)

moy
var
ecartType
med
# une autre façon plus simple de faire#
mean(myData$Nombre)
var(myData$Nombre)
sd(myData$Nombre)
median(myData$Nombre)

summary(myData$Nombre)


x<-0
for (i in 1:length(myData$Nombre))
{x<- x+abs(myData$Nombre[i]-moy)}
ecartAbsMoyen<-x/length(myData$Nombre)
ecartAbsMoyen

x<-0
for (i in 1:length(myData$Nombre))
{x<- x+abs(myData$Nombre[i]-med)}
ecartAbsMedian<-x/length(myData$Nombre)
ecartAbsMedian

prenomsCumul=data.frame(cumsum(table(myData$Nombre)))
prenomsCumul
i<-seq(1,11)
plot(i,prenomsCumul[,1],xlab="Nombre",ylab="effectifs cumules",col="blue",
     main="Effectifs cumulés du caractère nombre")


boxplot(myData$Nombre,main="Nombre")

plot(ecdf(myData$Nombre))

print(moy)
print(med)
print(ecartType)
print(ecartAbsMoyen)
print(ecartAbsMedian)

##exercice 1.4

hist(myData$Grandeur,breaks=12,main="Etude de grandeur",xlab="Grandeur",ylab="Effectifs")
moy<-mean(myData$Grandeur)
var<-mean(myData$Grandeur^2)-mean(myData$Grandeur)^2
ecartType<-sqrt(var)
med<-median(myData$Grandeur)

x<-0
for (i in 1:length(myData$Grandeur))
{x<- x+abs(myData$Grandeur[i]-moy)}
ecartAbsMoyen<-x/length(myData$Grandeur)

x<-0
for (i in 1:length(myData$Grandeur))
{x<- x+abs(myData$Grandeur[i]-med)}
ecartAbsMedian<-x/length(myData$Grandeur)

boxplot(myData$Grandeur,main="Grandeur")

print(moy)
print(med)
print(ecartType)
print(ecartAbsMoyen)
print(ecartAbsMedian)

##exercice 2.1

x<-seq(1,69)
y<-myData$Population
covaxy<-mean(x*y)-mean(x)*mean(y)
sigmax <- sqrt(mean(x^2)-mean(x)^2)
sigmay <- sqrt(mean(y^2)-mean(y)^2)
corrxy<-covaxy/(sigmax*sigmay)
corrxy
print(corrxy)

plot(x,y,xlim=c(0,70)
     ,main="Etude population",xlab="Rang",ylab="Population")
a<-covaxy/(sigmax^2)
b<-mean(y)-a*mean(x)
abline(b,a)

prevision<-a*71+b
print(prevision)
# une autre solution plus simple#
cor(x,y)
lm(y~x)
0.03157*71+2.07880


##Exercice 2.2

Y<-log(y)
covaxY<-mean(x*Y)-mean(x)*mean(Y)
sigmax <- sqrt(mean(x^2)-mean(x)^2)
sigmaY <- sqrt(mean(Y^2)-mean(Y)^2)
corrxY<-covaxY/(sigmax*sigmaY)
print(corrxY)
plot(x,y,xlim=c(0,70)
     ,main="Etude population",xlab="Rang",ylab="Population")
A<-covaxY/(sigmax^2)
B<-mean(Y)-A*mean(x)
a<-exp(A)
b<-exp(B)
lines(x=seq(from=1,to=69),y=b*a^x)

prevision2<-b*a^71
print(prevision2)

# une autre solution plus simple#
Y<-log(y)
lm(Y~x)
cor(x,Y)


#Exercice 3.1
summary(myData$Opinion)


binom.test(24,69,p=24/69, conf.level = 0.95)$conf.int
binom.test(24,69,p=24/69, conf.level = 0.99)$conf.int
#ou bien 
prop.test(sum(myData$Opinion == "VRAI"), length(myData$Opinion),conf.level = 0.95)
prop.test(sum(myData$Opinion == "VRAI"), length(myData$Opinion),conf.level = 0.99)

24/69

#Exercice 3.3
chisq.test(table(myData$Pâtes,myData$Couleur))


