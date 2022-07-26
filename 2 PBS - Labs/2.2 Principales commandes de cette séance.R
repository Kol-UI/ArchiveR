#Lecture des donn�es# POUR mAC AJOUTER header = true
read.csv2("C:/Labs-2PBS.csv", sep=";")

#stocker dans une variable de type data.frame#
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")

# V�rification que les donn�es sont en m�moire#
Labs
  
# Lecture des donn�es en consid�rant les manquantes#
Labs <- read.csv2("C:/Labs-2PBS.csv",na.string ="")

# Le type des colonnes#
str(Labs)

# R�sum� des donn�es#
summary(Labs)

# R�sum� des donn�esd'une variable#
summary(Labs$Statut)

# Effectif de Statut#
table(Labs$Statut)

#calcul du mode pour une variable qualitative#
sort (table(Labs$Statut), decreasing =TRUE)

# diagramme en baton #
barplot(table(Labs$Statut))

#tra�age de camemberts#
pie(table(Labs$Statut))

#moyenne, m�diane, quantile, �cart-type, variance#
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

#boite � moustaches#
boxplot(Labs$Age)
m=boxplot(Labs$Age)
m

#Quelques options de la fonction hist
#breaks vecteur d�finissant les bords des intervalles
#freq (freq=TRUE, option par d�faut) pour obtenir l'histogramme des effectifs, 


#(freq=FALSE).pour obtenir l'histogramme des proportions
#col pour indiquer la couleur des barres
#plot plot=FALSE, pour que hist renvoie la liste des points de ruptures et les effectifs sans
#faire de trac�.
#right right=TRUE, pour que les intervalles de la partition soient de la forme ]a, b] (par d�faut ils sont de la forme [a, b[)

#Quelques commandes utiles pour faires des graphiques

#plot(x=...,y=...,type=...,trace les points dont les abscisses sont donn�es dans le vecteur x et les
#ordonn�es dans le vecteur y, type permet de d�finir le type de trac�,
     
#col=..., la couleur

#xlim=...,ylim=...,xlim et ylim permettent de pr�ciser les limites des axes

#main=...,le titre
     
#xlab=..., ylab=...)xlab et ylab les l�gendes pour les axes

#points(x=...,y=...,type=...) pour ajouter des points sur un trac�
#par(new=TRUE) pour superposer des graphiques (par d�faut, new=FALSE)
#par(ask=TRUE) l'ex�cution du programme s'arr�te jusqu'� ce que l'utilisateur tape sur
#la touche Enter
#par(mfrow=c(lig,col)) divise la fen�tre graphique permettant d'afficher col graphiques par ligne

# Cr�ation d'un vecteur#
v <- c(1.2,2.5,3.2,1.8)

#Nombre d'�l�ments#
length(v)

#changement d'une valeur de la variable#
v[3]
v[3] <- 9.2
v

#concat�ner 2 ou plusieurs vecteurs avec c()#
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

#Indices n�gatifs#
v[-2] 
v[-(2:4)]
v
#attribuer des noms aux cases du vecteur#
names(v) <- c("claude","david","sylvie","karim","elise")
x <- v["sylvie"]
x
#on peut �galement proc�der � une affectation par nom#
v["sylvie"] <- 5.6
print(v)

#repr�sentation des variables qualitatives"
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

