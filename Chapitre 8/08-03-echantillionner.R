# Création d'échantillons à partir d'un dataset
library(dplyr)

d_frame <- read_delim("perso-potter-vs-sherlock.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)


# un peu de stats

# Créer une liste de valeurs de 1 à 1197
x <- 1:1197 

# Mettre les valeurs d'une liste dans un ordre aléatoire
x <- sample(x) 


# Créer une liste de 10000 valeurs suivant la loi normale, moyenne 20, écart-type 3.
x <- rnorm(10000,20,3) 


#Créer une liste de 1000 valeurs suivant une loi uniforme, minimum 20, maximum 80
intelligence <- runif(1197,20,80) 
force <- runif(1197,20,80)
popularité <- runif(1197,80,100)

d_frame$Popularité <- round(popularité)

# Création d'un sample aléatoire
sample_data <- sample_n(d_frame, size = 100)


