read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv",na.string ="")
Labs<-read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs
Labs$Statut

# Résumé des donnéesd'une variable#
summary(Labs$Statut)

# Effectif de Statut#
table(Labs$Statut)

# diagramme en barres #
barplot(table(Labs$Statut))
barplot(table(Labs$Statut), ylim= c(0,6000), main = "Diagramme à bandes de la variable Satut", col = rainbow(4))


#traçage de camemberts#
pie(table(Labs$Statut))

#calcul du mode pour une variable qualitative#
sort (table(Labs$Statut), decreasing=TRUE)

#les modalités de la variable#
levels(Labs$Statut)

summary(Labs$Qualification)
