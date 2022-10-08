myData<-read.csv2("D:/Cours/2 PBS - Probabilities and Statistics/Rendu 2PBS (223334 - 225107)/MP.csv")
summary(myData)

#EX 3#
x<-seq(1,96)
y<-myData$bedNight
plot(x,y,xlab="Jours",ylab="Nombre de nuit",main="Nuitée par mois")

#EX 4#
y<-myData$bedNight
filter(y, rep(1, 12))

#EX 5#
#EX 5.1#
y<-myData$bedNight
SL<-filter(y, rep(1, 12))
x<-seq(6,90)

y<-as.character(myData$bedNight)
y<- as.numeric(y)
SP<-list()
print(y)
for(var in x){
  Xt<-y[var]
  Xtx<- SL[var]
  n<-Xt - Xtx
  SP[length(SP)+1]<-n
}
print(SP)

#Ex 5.2#
ans<-seq(1,7)
c<-list()
for(an in ans){
  c[length(c)+1]<-(SP[[0+an]]+SP[[12+an]]+SP[[24+an]]+SP[[36+an]]+SP[[48+an]]+SP[[60+an]]+SP[[73+an]])/7
}
print(c)

#Ex 5.3#
moy<-(SP[[1]]+SP[[2]]+SP[[3]]+SP[[4]]+SP[[5]]+SP[[6]]+SP[[7]]+SP[[8]]+SP[[9]]+SP[[10]]+SP[[11]]+SP[[12]])/12
jj<-seq(1,12)
cj<-list()
for(j in jj){
  cj[j]<-SP[[j]]-moy
}
print(cj)
#Ex 6#
#Ex 6.1#
aa<-seq(1,12)
y<-as.character(myData$bedNight)
y<- as.numeric(y)
SC<-list()
for(a in aa){
  SC[a]<-y[a+5]-cj[[a]]
  SC[a+12]<-y[a+17]-cj[[a]]
  SC[a+24]<-y[a+29]-cj[[a]]
  SC[a+36]<-y[a+41]-cj[[a]]
  SC[a+48]<-y[a+53]-cj[[a]]
  SC[a+60]<-y[a+65]-cj[[a]]
  SC[a+72]<-y[a+77]-cj[[a]]
}
print(SC)

x<-seq(1,84)
plot(x,SC,type = "l",xlab="Mois",ylab = "Valeur",main = "Série Corrigée")

#require(stats)
#o<- myData$bedNight
#o<- as.numeric(o)
#reg<-lm(o)
#abline(reg, col="red")
#abline(v = mean(x))

