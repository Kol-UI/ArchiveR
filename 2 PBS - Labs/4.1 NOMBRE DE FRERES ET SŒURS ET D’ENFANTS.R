#Ils'agit d'estimer les intervalles de confiance aux niveaux 95% et 99% des variables 
#donnant le nombre de frères et sours pour la population dont proviennent les mesures


read.csv2("C:/Labs-2PBS.csv", sep=";")
Labs <- read.csv2("C:/Labs-2PBS.csv", sep=";")
summary(Labs)
summary(Labs$NombreFS)
NombreFS <- Labs[,7]
NombreFS
mean(NombreFS)
t.test(NombreFS)
t.test(NombreFS)$conf.int
t.test(NombreFS, conf.level = 0.99)$conf.int
     
#meme principe pour le nombre d'enfants
nombreE <- Labs$NombreE
nombreE
summary(nombreE)
t.test(nombreE)$conf.int
t.test(nombreE, conf.level = 0.99)$conf.int
