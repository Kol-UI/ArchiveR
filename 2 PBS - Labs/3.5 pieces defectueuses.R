# d: donne les valeurs P(X=j)
1-(dbinom(2,100,0.02)+dbinom(1,100,0.02)+dbinom(0,100,0.02))

#p: donne les valeurs P(X<=x)
1-(pbinom(2,100,0.02))
pbinom(2, 100, 0.02, lower.tail = FALSE)
?dbinom

#r: donne des échantillons
#q: donne la valeur x telle que P(X=x)=y
qbinom(0.87,100, 0.02 )
rbinom(77, 100,0.02)
