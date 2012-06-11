


prostownicza <- read.csv2("prostownicza.txt",dec=",")
germanowa <- read.csv2("germanowa.txt",dec=",")
impulsowa <- read.csv2("impulsowa.txt",dec=",")
biala <- read.csv2("biala.txt",dec=",")
zolta <- read.csv2("zolta.txt",dec=",")
zielona <- read.csv2("zielona.txt",dec=",")
pomaranczowa <- read.csv2("pomaranczowa.txt",dec=",")


bialaGood <- biala + 2*(abs(min(biala)))
zoltaGood <- zolta + 2*(abs(min(zolta)))
zielonaGood <- zielona + 2*abs(min(zielona))
pomaranczowaGood <- pomaranczowa + 2*abs(min(pomaranczowa))


xmin1 <- min(germanowa$U,prostownicza$U,impulsowa$U)
xmax1 <- max(germanowa$U,prostownicza$U,impulsowa$U)
ymin1 <- min(germanowa$I,prostownicza$I,impulsowa$I)
ymax1 <- max(germanowa$I,prostownicza$I,impulsowa$I)

xmin <- min(xmin1,bialaGood$U,zielonaGood$U,pomaranczowaGood$U)
xmax <- max(xmax1,bialaGood$U,zielonaGood$U,pomaranczowaGood$U)
ymin <- min(ymin1,bialaGood$I,zielonaGood$I,pomaranczowaGood$I)
ymax <- max(ymax1,bialaGood$I,zielonaGood$I,pomaranczowaGood$I)

xmin;xmax;ymin;ymax;

pdf("out/1-linia.pdf")
plot(prostownicza,type="l",xlim=c(xmin1,xmax1),ylim = c(ymin1,ymax1))
points(germanowa,type="l")
points(impulsowa,type="l")
dev.off()

#Linia
pdf("out/1-log.pdf")
plot(prostownicza,type="l",xlim=c(xmin1,xmax1),ylim = c(ymin1,ymax1),log="y")
points(germanowa,type="l")
points(impulsowa,type="l")
dev.off()

pdf("out/all-linia.pdf")
plot(prostownicza,type="l",xlim=c(xmin,xmax),ylim = c(ymin,ymax))
points(germanowa,type="l")
points(impulsowa,type="l")
points(bialaGood,type="l")
points(zoltaGood,type="l")
points(zielonaGood,type="l")
points(pomaranczowaGood,type="l")
dev.off()

pdf("out/all-log.pdf")
plot(prostownicza,type="l",xlim=c(xmin,xmax),ylim = c(ymin,ymax),log="y")
points(germanowa,type="l")
points(impulsowa,type="l")
points(bialaGood,type="l")
points(zoltaGood,type="l")
points(zielonaGood,type="l")
points(pomaranczowaGood,type="l")
dev.off()

pdf("out/prostownicza.pdf")
plot(prostownicza,type="l",log="y")
dev.off()

pdf("out/germanowa.pdf")
plot(germanowa,type="l",log="y")
dev.off()

pdf("out/impulsowa.pdf")
plot(impulsowa,type="l",log="y")
dev.off()

pdf("out/biala.pdf")
plot(bialaGood,type="l",log="y")
dev.off()

pdf("out/zolta.pdf")
plot(zoltaGood,type="l",log="y")
dev.off()

pdf("out/zielona.pdf")
plot(zielonaGood,type="l",log="y")
dev.off()

pdf("out/pomaranczowa.pdf")
plot(pomaranczowaGood,type="l",log="y")
dev.off()

v6 <- read.csv2("3v6.txt",dec=",")
v4 <- read.csv2("5v4.txt",dec=",")
v5 <- read.csv2("7v5.txt",dec=",")

xmin <- min(v6$U,v4$U,v5$U)
xmax <- max(v6$U,v4$U,v5$U)
ymin <- min(v6$I,v4$I,v5$I)
ymax <- max(v6$I,v4$I,v5$I)

pdf("out/zener.pdf")
plot(v6,type="l",xlim=c(xmin,xmax),ylim = c(ymin,ymax))
points(v4,type="l")
points(v5,type="l")
dev.off()

xmin <- min(-v6$U,-v4$U,-v5$U)
ymin <- min(-v6$I,-v4$I,-v5$I)
xmax <- max(xmax1,bialaGood$U,zielonaGood$U,pomaranczowaGood$U)
ymax <- max(ymax1,bialaGood$I,zielonaGood$I,pomaranczowaGood$I)

pdf("out/all.pdf")
plot(prostownicza,type="l",xlim=c(xmin,xmax),ylim = c(ymin,ymax))
abline(v=0,h=0)
points(germanowa,type="l")
points(impulsowa,type="l")
points(bialaGood,type="l")
points(zoltaGood,type="l")
points(zielonaGood,type="l")
points(pomaranczowaGood,type="l")
points(-v6,type="l")
points(-v4,type="l")
points(-v5,type="l")
dev.off()
