
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

gr <- subset(d, U > 20 & U < 27)
GRl <- lm(rev(gr))
print(GRl)
Izero <- exp(GRl$coefficients[1])
print(Izero)
Nzero <- 1/(2*GRl$coefficients[2])
print(Nzero)


png(lout)
plot(d,ylim=c(-10,-0))
abline(zero)
abline(GRl)
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

x <- subset(d,U > 16 & U < 20)
zero <- lm(rev(x))
print(zero)
Izero <- exp(zero$coefficients[1])
print(Izero)
Nzero <- 1/zero$coefficients[2];
print(Nzero)

gr <- subset(d, U > 20 & U < 27)
GRl <- lm(rev(gr))
print(GRl)
Izero <- exp(GRl$coefficients[1])
print(Izero)
Nzero <- 1/(2*GRl$coefficients[2])
print(Nzero)


png(lout)
plot(d,ylim=c(-10,-0))
abline(zero)
abline(GRl)
dev.off()
