## Read in
Ah <- read.csv2("Adatok.csv", fileEncoding = "latin1")
Ah <- read.csv2("Adatok.csv")
Ah.spec <- Ah[,1]
Ah.ok <- Ah[-c(11,12),-c(1,13,14)]
colnames(Ah.ok) <- month.abb[c(10:12,1:8)]
rownames(Ah.ok) <- Ah.spec[1:10]
heatmap(as.matrix(Ah.ok))
heatmap(as.matrix(Ah.ok), margins = c(4,15), Colv=NA, Rowv=NA)
heatmap(as.matrix(Ah.ok[,c(4:11,1:3)]), margins = c(4,15), Colv=NA, Rowv=NA, col=topo.colors(50))
heatmap(as.matrix(Ah.ok[,c(4:11,1:3)]), margins = c(4,15), Colv=NA, Rowv=NA, col=terrain.colors(10))
heatmap(as.matrix(Ah.ok[,c(4:11,1:3)]), margins = c(4,15), Colv=NA, Rowv=NA, scale="none")

# Different Locations
DL <- read.csv2("DifLoc.csv", stringsAsFactors = FALSE)
DL.ok <- DL[-(1:4),-c(1:2, ncol(DL))]
DL.ok <- as.numeric(as.matrix(DL.ok))
which(is.na(DL.ok))
DL.ok[1040]=1
# Same as above 2 line
# DL.ok[is.na(DL.ok)]=1
DL.ok <- matrix(DL.ok,nrow=31,ncol=94)
DL.spec <- DL[-(1:4),2]
rownames(DL.ok) <- DL.spec
