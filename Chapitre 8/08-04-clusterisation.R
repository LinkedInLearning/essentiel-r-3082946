# Mise en application concrête avec l'utilisation de kmeans et ggplot

library(tidyverse)
library(cluster)
library(factoextra)
library(gridExtra)


d_frame <- read_delim("perso-potter-vs-sherlock.csv", 
                                       delim = ";", escape_double = FALSE, trim_ws = TRUE)


# Retirer les valeurs manquantes
mean_intelligence <- mean(d_frame$Intelligence, na.rm=TRUE)
mean_force <- mean(d_frame$Force, na.rm=TRUE)
mean_dangereux <- mean(d_frame$Dangereux, na.rm=TRUE)

# On utilise la fonction is.na() pour identifier les valeurs manquantes
d_frame$Intelligence[is.na(d_frame$Intelligence)] <- mean_intelligence
d_frame$Force[is.na(d_frame$Force)] <- mean_force
d_frame$Dangereux[is.na(d_frame$Dangereux)] <- mean_dangereux

# Transformer une colonne en nom de ligne
d_frame_unique <- d_frame
rownames <- d_frame_unique$PERSO
d_frame_unique$PERSO <- NULL
row.names(d_frame_unique) <- rownames 

# Normaliser
d_frame_scaled <- scale(d_frame_unique)

# Calculer 2 clusters
kmeans2 <- kmeans(d_frame_scaled, centers = 2, nstart = 25)
str(kmeans2)

fviz_cluster(kmeans2, data = d_frame_scaled)

# Calculer 3, 4, 5 clusters
kmeans3 <- kmeans(d_frame_scaled, centers = 3, nstart = 25)  #DataFlair
kmeans4 <- kmeans(d_frame_scaled, centers = 4, nstart = 25)  
kmeans5 <- kmeans(d_frame_scaled, centers = 5, nstart = 25)  

# Comparer les résultats
plot1 <- fviz_cluster(kmeans2, geom = "point", data = d_frame_scaled) + ggtitle("k = 2")
plot2 <- fviz_cluster(kmeans3, geom = "point", data = d_frame_scaled) + ggtitle("k = 3")
plot3 <- fviz_cluster(kmeans4, geom = "point", data = d_frame_scaled) + ggtitle("k = 4")
plot4 <- fviz_cluster(kmeans5, geom = "point", data = d_frame_scaled) + ggtitle("k = 5")
grid.arrange(plot1, plot2, plot3, plot4, nrow = 2)

# Extraire les points et expliquer les données
print(kmeans5)

# Calculer les moyennes par groupe
aggregate(d_frame, by=list(cluster=kmeans5$cluster), mean)

# Ajouter l'info cluster dans le jeu de donnée original
dd <- cbind(d_frame, cluster = kmeans5$cluster)
head(dd)

# cluster 3 est intéressant


