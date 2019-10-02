str(edidiv)
dim(edidiv)
summary(edidiv$taxonGroup)
attach(edidiv)
Beetle <- filter(edidiv, taxonGroup == "Beetle")
Bird <- filter(edidiv, taxonGroup == "Bird")
install.packages("dplyr")
library(dplyr)
a <- length(unique(BeetletaxonName))
b <- length(unique(Bird$taxonName))
Beetle
Beetle <- filter(edidiv, taxonGroup == "Beetle")
Bird <- filter(edidiv, taxonGroup == "Bird")
Beetle
a <- length(unique(Beetle$taxonName))
b <- length(unique(Bird$taxonName))
a
b
a <- length(unique(Beetle$taxonName))
b <- length(unique(Bird$taxonName))
a
b
Beetle <- filter(edidiv, taxonGroup == "Beetle")
Bird <- filter(edidiv, taxonGroup == "Bird")
Butterfly <- filter(edidiv, taxonGroup == "Butterfly")
Dragonfly <- filter(edidiv, taxonGroup == "Dragonfly")
Flowering.Plants <- filter(edidiv, taxonGroup == "Flowering.Plants")
Hymenopteran <- filter(edidiv, taxonGroup == "Hymenopteran")
Lichen <- filter(edidiv, taxonGroup == "Lichen")
Liverwort <- filter(edidiv, taxonGroup == "Liverwort")
Mammal <- filter(edidiv, taxonGroup == "Mammal")
Mollusc <- filter(edidiv, taxonGroup == "Mollusc")
Fungus <- filter(edidiv, taxonGroup == "Fungus")


a <- length(unique(Beetle$taxonName))
b <- length(unique(Bird$taxonName))
c <- length(unique(Butterfly$taxonName))
d <- length(unique(Dragonfly$taxonName))
e <- length(unique(Flowering.Plants$taxonName))
f <- length(unique(Fungus$taxonName))
g <- length(unique(Hymenopteran$taxonName))
h <- length(unique(Lichen$taxonName))
i <- length(unique(Liverwort$taxonName))
j <- length(unique(Mammal$taxonName))
k <- length(unique(Mollusc$taxonName))

biodiv <- c(a,b,c,d,e,f,g,h,i,j,k)
names(biodiv) <- c("Beetle","Bird","Butterfly","Dragonfly","Flowering.Plants","Fungus","Hymenopteran","Lichen","Liverwort","Mammal","Mollusc")

barplot(biodiv)

png("barplot.png", width=1600, height=600)  
barplot(biodiv, xlab="Taxa", ylab="Number of species", ylim=c(0,600), cex.names= 1.5, cex.axis=1.5, cex.lab=1.5)
dev.off()

taxa <- c("Beetle","Bird","Butterfly","Dragonfly","Flowering.Plants","Fungus","Hymenopteran","Lichen","Liverwort","Mammal","Mollusc")
taxa_f <- factor(taxa)
richness <- c(a,b,c,d,e,f,g,h,i,j,k)
biodata <- data.frame(taxa_f, richness)

write.csv(biodata, file="biodata.csv")

png("barplot2.png", width=1600, height=600)

barplot(biodata$richness, names.arg=c("Beetle","Bird","Butterfly","Dragonfly","Flowering.Plants","Fungus","Hymenopteran","Lichen","Liverwort","Mammal","Mollusc"),xlab="Taxa", ylab="Number of species", ylim=c(0,600))


