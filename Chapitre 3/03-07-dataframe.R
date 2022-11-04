# Apprendre à créer et visualiser des dataframes, découverte des opérations sur les dataframe

# Création d'un dataframe
df <- data.frame()

# Création d'un dataframe à partir d'un vecteur
df <- data.frame(c(1, 2, 3))

# Création d'un dataframe à partir d'une matrice
df <- data.frame(matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3))

# Création d'un dataframe à partir d'un fichier
df <- read.csv("file.csv")

# Visualisation d'un dataframe
df

# Opérations sur les dataframes
df + 1
df * 2
df / 2
df - 1
df ^ 2
df %*% matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

# Opérations sur les colonnes
df$col1
df$col2
df$col3

# Opérations sur les lignes
df[1, ]
df[2, ]
df[3, ]

# Opérations sur les cellules
df[1, 1]
df[1, 2]
df[1, 3]
df[2, 1]
df[2, 2]
df[2, 3]
df[3, 1]
df[3, 2]
df[3, 3]

