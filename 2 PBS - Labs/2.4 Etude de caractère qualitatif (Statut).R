read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv",na.string ="")
Labs<-read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs
Labs$Statut

# R�sum� des donn�esd'une variable#
summary(Labs$Statut)

# Effectif de Statut#
table(Labs$Statut)

# diagramme en barres #
barplot(table(Labs$Statut))
barplot(table(Labs$Statut), ylim= c(0,6000), main = "Diagramme � bandes de la variable Satut", col = rainbow(4))


#tra�age de camemberts#
pie(table(Labs$Statut))

#calcul du mode pour une variable qualitative#
sort (table(Labs$Statut), decreasing=TRUE)

#les modalit�s de la variable#
levels(Labs$Statut)

summary(Labs$Qualification)
