Labs <- read.csv2("E:/Documents/R/2PBS-TP-BLANC.csv", sep=";")

summary(Labs)



#1.2#


barplot(table(Labs$Pâtes),ylab="effectifs",xlab="pates",main="choix des pates")
pie(table(Labs$Pâtes),ylab="effectifs",xlab="pates",main="choix des pates")

barplot(table(Labs$Couleur),ylab="effectifs",xlab="couleur",main="choix des couleurs")
pie(table(Labs$Couleur),ylab="effectifs",xlab="couleur",main="choix des couleurs")

sort(table(Labs$Pâtes),decreasing=TRUE)
sort(table(Labs$Couleur),decreasing=TRUE)



#1.3 etude complete quantitatif dicret#


mean(Labs$Nombre)
median(Labs$Nombre)
quantile(Labs$Nombre)
sd(Labs$Nombre)
var(Labs$Nombre)

eamoyen <- function(v){
  n <- length(v)
  m <- mean(v)
  w <- rep(m,n)
  eamoy <- (1/n)* sum(abs(v-w))
  return(eamoy)
}

eamoyen(Labs$Nombre)

eamedian <- function(v){
  n <- length(v)
  d <- median(v)
  r <- rep(d,n)
  eamed <- (1/n)* sum(abs(v-r))
  return(eamed)
}

eamedian(Labs$Nombre)

plot(ecdf(Labs$Nombre))

boxplot(Labs$Nombre)
sort(table(Labs$Nombre),decreasing=TRUE) #mode#
plot(table(Labs$Nombre),ylab="effectifs",xlab="Nombre",main="Nombres")

#1.4 caractère quandtitatifs continu#


mean(Labs$Grandeur)
median(Labs$Grandeur)
quantile(Labs$Grandeur)
sd(Labs$Grandeur)
var(Labs$Grandeur)

eamoyen <- function(v){
  n <- length(v)
  m <- mean(v)
  w <- rep(m,n)
  eamoy <- (1/n)* sum(abs(v-w))
  return(eamoy)
}

eamoyen(Labs$Grandeur)

eamedian <- function(v){
  n <- length(v)
  d <- median(v)
  r <- rep(d,n)
  eamed <- (1/n)* sum(abs(v-r))
  return(eamed)
}

eamedian(Labs$Grandeur)


boxplot(Labs$Grandeur)
sort(table(Labs$Grandeur),decreasing=TRUE) #mode#
hist(Labs$Grandeur,breaks=12,ylab="Frequence",xlab="Grandeur",main="Grandeur",col = rainbow(8))


#2.1 regression lineaire#

x<- seq(1,69)
y<- Labs$Population
cor(x,y)
droite<-lm(y~x)
droite
plot(x,y)
a<-0.03157
b<-2.07880
abline(b,a)

0.03157*71+2.07880


#exercie 2.2#

Y<-log(y)
cor(x,Y)
droite<-lm(Y~x)
droite
plot(x,Y)
a<-exp(0.009993)
b<-exp(0.788518)
lines(Y~x,col="red")
b*a^71


#3.1#

binom.test(24,69,p=24/69,conf.level = 0.95)$conf.int
binom.test(24,69,p=24/69,conf.level = 0.99)$conf.int


#3.2#
#sans rstudio#


#3.3#
chisq.test(table(Labs$Pâtes,Labs$Couleur))
#khi-deux=xsquared#
#df=degré de liberté#
#trouver talpha avec le tableau et comparer à khi-deux#
