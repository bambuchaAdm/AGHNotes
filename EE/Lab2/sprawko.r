
Ut <- 0.02587 #300K

#prostownicza <- read.csv2("prostownicza.txt",dec=",")
#prostownicza <- rev(prostownicza)
#model <- tail(prostownicza,n=50)
#l <- lm(prostownicza)
#png("out/prostownicza-linia.png")
#plot(prostownicza,xlab="U[V]",ylab="I[A]");abline(l)
#dev.off()



#prostownicza$U <- prostownicza$U / Ut
#png("out/p)
#plot(prostownicza,ylog="y")
#dev.off()

licz <- function(plik)
{
charakterystyka <- read.csv2(paste0(plik,".txt"),dec=",")
#charakterystyka <- rev(charakterystyka)
model <- tail(charakterystyka,n=30)
l <- lm(charakterystyka)
png(paste0("out//",plik,"-linia.png"))
plot(charakterystyka,xlab="U[V]",ylab="I[A]");abline(l)
dev.off()



charakterystyka$U <- charakterystyka$U / Ut
png(paste0("out//",plik,"-log.png"))
plot(charakterystyka,ylog="y")
dev.off()
}

licz("germanowa")












