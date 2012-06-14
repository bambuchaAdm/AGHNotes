
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

d <- subset(dane,I > 0)

d$U = d$U / Ut 
d$I = log10(d$I)














