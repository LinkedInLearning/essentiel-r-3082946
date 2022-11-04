# Se familiariser avec les packages {dplyr} et {tidyr} pour manipuler et nettoyer les données


# Charger les packages
library(dplyr)
library(tidyr)

# Charger les données
data <- read.csv("sherlock-holmes-train.csv", header = TRUE, sep = ";")

# Afficher les données
head(data)

# Afficher les dimensions des données
dim(data)

# Afficher les noms des variables
names(data)

# Afficher les types des variables
str(data)

# Afficher les statistiques descriptives
summary(data)


# dplyr
# breakout-puzzle
library(readxl)
xlsx <- read_excel("Breakout-Puzzle.xlsx", sheet = "Step 1", skip=9)

## resoudre le mystère
library(dplyr)
solver <- filter(xlsx,Digits==5)
solver
# R A Q TG

# tidyr

# Des données sont considérées comme tidy si :
# chaque ligne correspond à une observation
# chaque colonne correspond à une variable
# chaque valeur est présente dans une unique case de la table


# pivot_wider() : transformer des lignes en colonnes

library(tidyr)
library(dplyr)

joueurs <- data.frame(
  dé = c('Force', 'Dextérité', 'Endurance'),
  a = c(10, 5, 1),
  b = c(4, 8, 7),
  c = c(7, 8, 9)
)


joueurs2 <- joueurs %>% pivot_wider(names_from = dé, values_from = c(a, b, c))

