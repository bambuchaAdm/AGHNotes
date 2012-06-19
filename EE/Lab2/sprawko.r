
Ut <- 0.02587 #300K

typ <- "prostownicza"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")

png(nout)
l <- lm(tail(rev(dane),n=400))
Vzero <- polyroot(as.vector(l$coefficients))
print(Vzero)
plot(dane)
abline(l)
dev.off()

d <- dane

d$U <- d$U / Ut 
d$I <- d$I + abs(min(min(d$I),0))
d <- subset(d, I > 0)
d$I <- log10(d$I)

x <- subset(d,U > 16 & U < 20)
zero <- lm(rev(x))
print(zero)
Izero <- exp(zero$coefficients[1])
print(Izero)
Nzero <- 1/zero$coefficients[2];
print(Nzero)

png(lout)
plot(d,ylim=c(-10,-0))
abline(zero)
dev.off()
#######################################################################
#Prostownicza koniec tutaj
#######################################################################
typ <- "germanowa"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")
png(nout)
l <- lm(tail(rev(dane),n=400))
Vzero <- polyroot(as.vector(l$coefficients))
print(Vzero)
plot(dane)
abline(l)
dev.off()
d <- dane
d$U <- d$U / Ut 
d$I <- d$I + abs(min(min(d$I),0))
d <- subset(d, I > 0)
d$I <- log10(d$I)
x <- subset(d,U > 3 & U < 5)
zero <- lm(rev(x))
print(zero)
Izero <- exp(zero$coefficients[1])
print(Izero)
Nzero <- 1/zero$coefficients[2];
print(Nzero)
png(lout)
plot(d,ylim=c(min(zero$coefficients[1]-1,min(d$I)-1),-1))
abline(zero)
dev.off()
#######################################################################
#Germanowa koniec tutaj
#######################################################################
typ <- "impulsowa"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")
png(nout)
l <- lm(tail(rev(dane),n=400))
Vzero <- polyroot(as.vector(l$coefficients))
print(Vzero)
plot(dane)
abline(l)
dev.off()
d <- dane
d$U <- d$U / Ut 
d$I <- d$I + abs(min(min(d$I),0))
d <- subset(d, I > 0)
d$I <- log10(d$I)
x <- subset(d,U > 16 & U < 22)
zero <- lm(rev(x))
print(zero)
Izero <- exp(zero$coefficients[1])
print(Izero)
Nzero <- 1/zero$coefficients[2];
print(Nzero)
m <- colMeans(tail(dane))
print(m[2])
Rs <- (m[1] - Vzero)/m[2]
print(Rs)
png(lout)
plot(d,ylim=c(min(zero$coefficients[1]-1,min(d$I)-1),-1))
abline(zero)
dev.off()

########################################################################
#Koniec diody impulsowej
########################################################################

3v6 <- read.csv2("3v6.txt",dec=",")
5v4 <- read.csv2("5v4.txt",dec=",")
7v5 <- read.csv2("7v2.txt",dec=",")

plot(7v5)
pair(5v4)
pair(3v6)