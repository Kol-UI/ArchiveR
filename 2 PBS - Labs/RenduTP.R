myData<-read.csv2("C:/Users/nicol/Desktop/2PBS-TP-Data.csv")
summary(myData)


#exercice 1.2
#caractere qualitatif Pets
#histogramme
braplot(table(myData$Pets),ylab="valeur",xlab="pets",main="Pets")
#camembert
pie(table(myData$Pets),main="Pets")
sort(table(myData$Pets),decreasing=TRUE)

#caractere qualitatif Diet
#histogramme
barplot(table(myData$Diet),ylab="valeur",xlab="diet",main="Diet")
#camembert
pie(table(myData$Diet),main="Diet")
sort(table(myData$Diet),decreasing=TRUE)



#exercice 1.3
#caractere quantitatif discret IQ
plot(table(myData$IQ), type = "h",ylab="valeurs",xlab="IQ",main="Etude du caractère IQ")
#moyenne
mean(myData$IQ)
#ecart-type
sd(myData$IQ)
#medianne
median(myData$IQ)
var(myData$IQ)
summary(myData$IQ)
quantile(myData$IQ)

moyen <- function(x){
  len <- length(x)
  mea <- mean(x)
  re <- rep(mea,len)
  moy <- (1/n)* sum(abs(x-re))
  return(moy)
}
moyen(myData$IQ)

median <- function(y){
  leng <- length(y)
  media <- median(y)
  r <- rep(media,leng)
  med <- (1/n)* sum(abs(y-r))
  return(med)
}
median(myData$IQ)

plot(ecdf(myData$IQ))
boxplot(myData$IQ)
sort(table(myData$IQ),decreasing=TRUE)
plot(table(myData$IQ),ylab="valeurs",xlab="IQ",main="IQ")



#exercice 1.4
#etude facon complete d'un caractere quantitatif continu "durations"
hist(myData$Durations,main="Etude de grandeur",xlab="Grandeur",ylab="Effectifs")
#moyenne
mean(myData$Durations)
#medianne
median(myData$Durations)
#ecart-type
sd(myData$Durations)
quantile(myData$Durations)
var(myData$Durations)

moyen <- function(x){
  len <- length(x)
  mea <- mean(x)
  re <- rep(mea,len)
  moy <- (1/n)* sum(abs(x-re))
  return(moy)
}
moyen(myData$Durations)

median <- function(y){
  leng <- length(y)
  media <- median(y)
  r <- rep(media,leng)
  med <- (1/leng)* sum(abs(y-r))
  return(med)
}
median(myData$Durations)
boxplot(myData$Durations)
sort(table(myData$Durations),decreasing=TRUE)
hist(myData$Durations,breaks=12,ylab="valeur",xlab="Durations",main="Durations")



#exercice 2.1

#limites entre 1 et 100
x<-seq(1,100)
y<-myData$Prices
covaxy<-mean(x*y)-mean(x)*mean(y)
sigmax <- sqrt(mean(x^2)-mean(x)^2)
sigmay <- sqrt(mean(y^2)-mean(y)^2)
corrxy<-covaxy/(sigmax*sigmay)
corrxy
print(corrxy)
plot(x,y,xlim=c(1,100),main="Regression Lineaire",xlab="valeur",ylab="Prices")
a<-covaxy/(sigmax^2)
b<-mean(y)-a*mean(x)
abline(b,a)

#exercice 3.1
#les intervalles de confiance
#niveau 95%
binom.test(68,100,p=68/100,conf.level = 0.95)$conf.int
#niveau 99%
binom.test(68,100,p=68/100,conf.level = 0.99)$conf.int
#niveau 1%
binom.test(68,100,p=68/100,conf.level = 0.01)$conf.int
#niveau 5%
binom.test(68,100,p=68/100,conf.level = 0.05)$conf.int

