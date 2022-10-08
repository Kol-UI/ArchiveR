#Lecture des données# POUR mAC AJOUTER header = true
read.csv2("C:/Labs-2PBS.csv", sep=";")

#stocker dans une variable de type data.frame#
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")

# Vérification que les données sont en mémoire#
Labs
  
# Lecture des données en considérant les manquantes#
Labs <- read.csv2("C:/Labs-2PBS.csv",na.string ="")

# Le type des colonnes#
str(Labs)

# Résumé des données#
summary(Labs)

# Résumé des donnéesd'une variable#
summary(Labs$Statut)

# Effectif de Statut#
table(Labs$Statut)

#calcul du mode pour une variable qualitative#
sort (table(Labs$Statut), decreasing =TRUE)

# diagramme en baton #
barplot(table(Labs$Statut))

#traçage de camemberts#
pie(table(Labs$Statut))

#moyenne, médiane, quantile, écart-type, variance#
mean(Labs$Age)
median (Labs$Age)
quantile(Labs$Age)
sd(Labs$Age)
var(Labs$Age)

#Tracer un histogramme#
hist(Labs$Age)
hist(Labs$Age, probability = TRUE)
hist(Labs$Age, probability = TRUE, col = rainbow(15))
h=hist(Labs$Age, probability = TRUE)
h

#boite à moustaches#
boxplot(Labs$Age)
m=boxplot(Labs$Age)
m

#Quelques options de la fonction hist
#breaks vecteur définissant les bords des intervalles
#freq (freq=TRUE, option par défaut) pour obtenir l'histogramme des effectifs, 


#(freq=FALSE).pour obtenir l'histogramme des proportions
#col pour indiquer la couleur des barres
#plot plot=FALSE, pour que hist renvoie la liste des points de ruptures et les effectifs sans
#faire de tracé.
#right right=TRUE, pour que les intervalles de la partition soient de la forme ]a, b] (par défaut ils sont de la forme [a, b[)

#Quelques commandes utiles pour faires des graphiques

#plot(x=...,y=...,type=...,trace les points dont les abscisses sont données dans le vecteur x et les
#ordonnées dans le vecteur y, type permet de définir le type de tracé,
     
#col=..., la couleur

#xlim=...,ylim=...,xlim et ylim permettent de préciser les limites des axes

#main=...,le titre
     
#xlab=..., ylab=...)xlab et ylab les légendes pour les axes

#points(x=...,y=...,type=...) pour ajouter des points sur un tracé
#par(new=TRUE) pour superposer des graphiques (par défaut, new=FALSE)
#par(ask=TRUE) l'exécution du programme s'arrête jusqu'à ce que l'utilisateur tape sur
#la touche Enter
#par(mfrow=c(lig,col)) divise la fenêtre graphique permettant d'afficher col graphiques par ligne

# Création d'un vecteur#
v <- c(1.2,2.5,3.2,1.8)

#Nombre d'éléments#
length(v)

#changement d'une valeur de la variable#
v[3]
v[3] <- 9.2
v

#concaténer 2 ou plusieurs vecteurs avec c()#
x <- c(2,6.3,-6,7.2)
y <- c(3.1,-8,1.1)
z <- c(x,y)
z

# plage d'indices pour extraire un sous-vecteur#
v <- c(1.2, 2.3, 4.2, 8.5, 6.3)

v <- c(1.2, 2.3, 4.2, 8.5, 6.3)
#Indices contigus#
v[2:4] 
m <- 1:3 
v[m] 

#Indices non-contigus#
v[c(1:3,5)]

#Indices négatifs#
v[-2] 
v[-(2:4)]
v
#attribuer des noms aux cases du vecteur#
names(v) <- c("claude","david","sylvie","karim","elise")
x <- v["sylvie"]
x
#on peut également procéder à une affectation par nom#
v["sylvie"] <- 5.6
print(v)

#représentation des variables qualitatives"
v <- c(1,2,1,1,2)
sexe <- factor(v)
print(sexe)
print(is.factor(sexe))
levels(sexe)
levels(sexe) <- c("masculin", "feminin")
print(sexe)

#calculs sur un vecteur, conditionnellement aux valeurs prises par un ou plusieurs facteurs
v <- c(1.2,2.3,4.1,2.5,1.4,2.7)
x <- factor(c(1,2,1,1,2,1))
levels(x) <- c("masculin","feminin")
print(tapply(v,x,mean))

