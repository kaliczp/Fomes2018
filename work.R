## Read in
Ah <- read.csv2("Adatok.csv", fileEncoding = "latin1")
Ah <- read.csv2("Adatok.csv")
Ah.spec <- Ah[,1]
Ah.ok <- Ah[-c(11,12),-c(1,13,14)]
colnames(Ah.ok) <- month.abb[c(10:12,1:8)]
rownames(Ah.ok) <- Ah.spec[1:10]
heatmap(as.matrix(Ah.ok))
heatmap(as.matrix(Ah.ok), margins = c(4,15), Colv=NA, Rowv=NA)
heatmap(as.matrix(Ah.ok[,c(4:11,1:3)]), margins = c(4,15), Colv=NA, Rowv=NA)
