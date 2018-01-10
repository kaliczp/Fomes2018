## Read in
Ah <- read.csv2("Adatok.csv", fileEncoding = "latin1")
Ah <- read.csv2("Adatok.csv")
Ah.spec <- Ah[,1]
Ah.ok <- Ah[-c(11,12),-c(1,13,14)]
colnames(Ah.ok) <- month.abb[c(10:12,1:8)]
rownames(Ah.ok) <- Ah.spec[1:10]
heatmap(as.matrix(Ah.ok))