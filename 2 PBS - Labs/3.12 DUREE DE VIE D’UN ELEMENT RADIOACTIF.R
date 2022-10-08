a<-log(2)/5568
a
pexp(1000, a)
1-pexp(500,a)
pexp(500,a, lower.tail = FALSE)

#q: donne la valeur X telle que P(X=x)=y
qexp(0.2,a)
