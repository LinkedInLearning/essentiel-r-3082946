# Intérêt et librairie pour normaliser ses données

# La normalisation est une étape importante dans le traitement des données. 
# Elle permet de mettre toutes les variables sur la même échelle.

# Pour normaliser vos données, vous pouvez utiliser la fonction `scale()`.

# Chargement des données
data(iris)

summary(iris)

# Normalisation des données
iris_norm <- scale(iris[, 1:4])

summary(iris_norm)


##

d_frame <- read_delim("perso-potter-vs-sherlock.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)


d_frame_scaled <- scale(d_frame)
# ERROR

# SOLUTION
d_frame <- na.omit(d_frame) 
d_frame$PERSO <- NULL

d_frame_scaled <- scale(d_frame)
summary(d_frame_scaled)



