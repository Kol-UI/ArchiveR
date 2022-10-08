data <- data.frame(voyelles = c("a", "e", "i", "o", "u", "y") , tigre = c(45, 96,39, 29, 36, 1), dispar = c(87,0,67,74,74,8))
barplot(data$tigre)
tigre <- as.matrix(data[, 2])
dispar<-as.matrix(data[, 3])
rownames(tigre) <- data[, 1]
rownames(dispar)<-data[,1]

barplot(t(tigre))
barplot(t(dispar))
pie(t(tigre),labels=c("a", "e", "i", "o", "u", "y"))
pie(t(dispar),labels=c("a", "e", "i", "o", "u", "y"))

