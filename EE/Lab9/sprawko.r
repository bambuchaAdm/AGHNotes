
dane <- read.csv2("ch-prz-n-mos.txt",dec=",")
axis_label <- c()
axis_value <- c()
dane$Id <- dane$Id * 1000

for( i in unique(dane$Uds) )
{
	I <- subset(dane,Uds == i)$Id;
	axis_label <- append(axis_label,i)
	axis_value <- append(axis_value,max(I))
}

d <- subset(dane,Uds == 2 & Ugs > 4)
d$Id <- sqrt(d$Id)
l <- lm(d$Id ~ d$Ugs)
r <- as.real(polyroot(l$coefficients))
png("out/n-pierwiastek.png")
plot(d$Id ~ d$Ugs,xlim=c(1,10),ylim=c(0,7),xlab="Ugs[V]",ylab="sqrt(Id)[mA]")
abline(l)
abline(h=0)
axis(1,c(r),c("Vt"))
dev.off()
round(r,digits=2)


png("out/n-przejsciowa.png")
par(mar=c(5, 4, 4, 4) + 0.1)
plot(dane$Id ~ dane$Ugs,xlab="Ugs[V]",ylab="Ig[mA]")
axis(4,axis_value,axis_label)
mtext("Uds", side=4, line=2)
dev.off()

print(axis_label)
print(round(axis_value))

#############
#############Koniec charakterystyki przejściowej
#############

dane <- read.csv2("ch-wyj-n-mos.txt",dec=",")

out <- by(dane,dane$Ugs, function(x){
     x <- tail(x,n=38);
     lm( x$Id ~ x$Uds);
    })
axis_label <- c()
axis_value <- c()
for( i in unique(dane$Ugs) )
{
	I <- subset(dane,Ugs == i)$Id;
	axis_label <- append(axis_label,i)
	axis_value <- append(axis_value,max(I))
}


png("out/n-wyjsciowa.png")
par(mar=c(5, 4, 4, 4) + 0.1)
plot(dane$Id ~ dane$Uds,xlab="Uds[V]",ylab="Ig[A]")
axis(4,axis_value,axis_label)
mtext("Ugs", side=4, line=2)
dev.off()

roots <- Reduce(append,Map(function(x){as.real(polyroot(x$coefficients))},out))
lambda <- Reduce(append,lapply(roots,function(x) 1/x))
print(round(lambda,digits=3))
print(axis_label)
mean(lambda)


########################Koniec wyjsciowej

dane <- read.csv2("ch-wyj-p-mos.txt",dec=",")
dane$Uds <- -dane$Uds # Zamiana polaryzacji zasilacza