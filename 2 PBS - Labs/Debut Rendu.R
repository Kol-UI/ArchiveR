myData <- read.csv2("C:/Users/nicol/Desktop/MP.csv", sep=";")

summary(myData)

x<-myData$bedNight
y<-seq(1,96)
plot(y,x,ylab="Jours",xlab="Nombre de nuit",main="Nuité par mois")


y<-myData$bedNight
SL<-filter(y, rep(1, 12))
print(SL)
x<-seq(6,90)

y<-as.character(myData$bedNight)
y<- as.numeric(y)
SP<-list()
for(var in x){
  Xt<-y[var]
  Xtx<- SL[var]
  n<-Xt - Xtx
  SP[length(SP)+1]<-n
}
print(SP)


filter(y, rep(1,12))
mob<-filter(x,rep(1/12,12))
print(mob)

