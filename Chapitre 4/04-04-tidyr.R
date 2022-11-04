# Mise en place de format spécifique avec {tidyr} et exemple pratique

library(dplyr)
library(tidyr)

library(readr)
quartier_londres <- read_delim("quartier-londres.csv", 
                               delim = ";", escape_double = FALSE, trim_ws = TRUE)

# pivot_wider() : transformer des lignes en colonnes
rel1 <- quartier_londres %>%
  pivot_longer(!quartier, names_to = "income", values_to = "count")


# separate() : séparer une colonne en plusieurs colonnes
rel2 <- quartier_londres %>%
  separate(quartier, c("quartier1", "quartier2"), sep = "-")

# separate_rows() : séparer une colonne en plusieurs lignes
rel3 <- quartier_londres %>%
  separate_rows(quartier, sep = "-")

# unite() : regrouper plusieurs colonnes en une seule

# extract() : créer de nouvelles colonnes à partir d’une colonne de texte

# complete() : compléter des combinaisons de variables manquantes