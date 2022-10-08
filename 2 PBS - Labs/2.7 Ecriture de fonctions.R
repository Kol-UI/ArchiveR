eamoyen <- function(v){
n <- length(v)
m <- mean(v)
w <- rep(m,n)
eamoy <- (1/n)* sum(abs(v-w))
return(eamoy)
}

eamoyen(v= c(-1,0.5,-3.5, 2))

eamedian <- function(v){
n <- length(v)
d <- median(v)
r <- rep(d,n)
eamed <- (1/n)* sum(abs(v-r))
return(eamed)
}

eamedian(v=c(1,3,3,2,2,1))


