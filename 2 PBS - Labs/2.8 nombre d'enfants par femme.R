read.csv2("C:/Nombre d enfants par femmes.csv", sep=";", header = TRUE)
NEPF<-read.csv2("C:/Nombre d enfants par femmes.csv", sep=";", header = TRUE)
data<-as.data.frame(NEPF)
summary(data)
barplot(table(data),xlab = "Nombres d'enfants", ylab = "effectifs",
        names.arg=c("0","1","2","3","4","5","7"), col="red", 
        border="blue", main = "Nombre d'enfants par femme")
table(data)

boxplot(data)
plot(ecdf(table(data)))

     