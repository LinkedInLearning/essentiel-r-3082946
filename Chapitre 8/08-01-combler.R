# Gestion des valeurs manquantes dans un jeu de données et découverte de toutes les méthode possibles pour combler les trous
library(readr)

d_frame <- read_delim("perso-potter-vs-sherlock.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

summary(d_frame)


# Solution simple : On retire les lignes avec des NA
d_frame <- na.omit(d_frame)  


summary(d_frame)


##############

d_frame <- read_delim("perso-potter-vs-sherlock.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)

summary(d_frame)

# On utilise la fonction mean() pour calculer la moyenne de la colonne
mean_intelligence <- mean(d_frame$Intelligence, na.rm=TRUE)
mean_force <- mean(d_frame$Force, na.rm=TRUE)
mean_dangereux <- mean(d_frame$Dangereux, na.rm=TRUE)

# On utilise la fonction is.na() pour identifier les valeurs manquantes
d_frame$Intelligence[is.na(d_frame$Intelligence)] <- mean_intelligence
d_frame$Force[is.na(d_frame$Force)] <- mean_force
d_frame$Dangereux[is.na(d_frame$Dangereux)] <- mean_dangereux

summary(d_frame)
