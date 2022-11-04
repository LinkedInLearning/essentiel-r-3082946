# Apprendre à manipuler et transformer des données avec {dplyr}

library(dplyr)

# select() : sélectionner des variables par leur nom ;

select(iris, Sepal.Length, Sepal.Width)

# rename() : renommer des variables ;

rename(iris, SL = Sepal.Length, SW = Sepal.Width)

# filter() : sélectionner des observations selon une ou plusieurs conditions ;

filter(iris, Sepal.Length > 5)

# arrange() : trier la table selon une ou plusieurs variables ;

arrange(iris, Sepal.Length)

# mutate() : ajouter des variables qui sont fonction d’autres variables ;

mutate(iris, ratio = Sepal.Length / Sepal.Width)

# summarise() : calculer une statistique à partir de données ;

summarise(iris, mean(Sepal.Length))

# group_by() : faire des opérations par groupe.

group_by(iris, Species)
