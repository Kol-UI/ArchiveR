pnorm(q = 12300,mean=12300, sd=1120)
pnorm(q = 11000,mean=12300, sd=1120)

1-pnorm(q = 12700,mean=12300, sd=1120)
1-pnorm(q = 12100,mean=12300, sd=1120)
#ou bien
pnorm(12700,12300, 1120, lower.tail = FALSE )
pnorm(12100,12300, 1120, lower.tail = FALSE)
