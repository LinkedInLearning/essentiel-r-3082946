# Se familiariser avec les packages {dplyr} et {tidyr} pour manipuler et nettoyer les données

# Charger les packages
library(dplyr)
library(tidyr)

# Charger les données
quartier_londres <- read_delim("quartier-londres.csv", 
                               delim = ";", escape_double = FALSE, trim_ws = TRUE)


# Afficher les données
head(quartier_londres,2)

# Afficher les dimensions des données
dim(quartier_londres)

# Afficher les noms des variables
names(quartier_londres)

# Afficher les types des variables
str(quartier_londres)

# Afficher les statistiques descriptives
summary(quartier_londres)


# dplyr
# breakout-puzzle
library(readxl)
xlsx <- read_excel("Breakout-Puzzle.xlsx", sheet = "Step 1", skip=9)

## resoudre le mystère
library(dplyr)
solver <- filter(xlsx,Digits==5)
solver

# tidyr

# Des données sont considérées comme tidy si :
# chaque ligne correspond à une observation
# chaque colonne correspond à une variable

# pivot_wider() : transformer des lignes en colonnes
library(tidyr)
library(dplyr)

us_rent_income2 <- us_rent_income

us_rent_income3 <-
  pivot_wider(us_rent_income,
    names_from = variable,
    values_from = c(estimate, moe)
  )
