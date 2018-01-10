## Read in
Ah <- read.csv2("Adatok.csv", fileEncoding = "latin1")
Ah <- read.csv2("Adatok.csv")
Ah.ok <- Ah[-c(11,12),-c(13,14)]
