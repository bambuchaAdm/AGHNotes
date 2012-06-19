
Ut <- 0.02587 #300K

typ <- "prostownicza"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")

dane$I <- dane$I/1000 #Poprawka na miliamperach

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
plot(d,ylim=c(-10,max(d$I)+0.5))
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

dane$I <- dane$I/1000 #poprawka na miliamperach

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
plot(d,ylim=c(min(zero$coefficients[1]-1,min(d$I)-1),max(d$I)+0.5))
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
dane$I <- dane$I/1000 # Poprawka na miliamperach

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

png("out/diody-all.png")

typ <- "prostownicza"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")

dane$I <- dane$I/1000 #Poprawka na miliamperach

plot(dane,type="l")

typ <- "germanowa"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")

dane$I <- dane$I/1000 #poprawka na miliamperach

points(dane,type="l")

typ <- "impulsowa"
plik <- paste(typ,".txt",sep="")
nout <- paste("out/",typ,"-normal.png",sep="")
lout <- paste("out/",typ,"-log.png",sep="")
dane <- read.csv2(plik,dec=",")
dane$I <- dane$I/1000 # Poprawka na miliamperach

points(dane,type="l")

dev.off()

########################################################################
#Koniec normalnych diod
########################################################################
one <- read.csv2("3v6.txt",dec=",")
two <- read.csv2("5v4.txt",dec=",")
three <- read.csv2("7v5.txt",dec=",")

png("out/stabilizacja.png")
plot(three,type="l")
points(two,type="l")
points(one,type="l")
dev.off()

########################################################################
#Koniec diod stabilizacyjnych
########################################################################

biala <- read.csv2("biala.txt",dec=",")
zolta <- read.csv2("zolta.txt",dec=",")
zielona <- read.csv2("zielona.txt",dec=",")
pomaranczowa <- read.csv2("pomaranczowa.txt",dec=",")

xmin <- min(biala$U,zielona$U,pomaranczowa$U)
xmax <- max(biala$U,zielona$U,pomaranczowa$U)
ymin <- min(biala$I,zielona$I,pomaranczowa$I)
ymax <- max(biala$I,zielona$I,pomaranczowa$I)

png("out/led-normal.png")
plot(biala,type="l")
points(zolta,type="l")
points(zielona,type="l")
points(pomaranczowa,type="l")
dev.off()