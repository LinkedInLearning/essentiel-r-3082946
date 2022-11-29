# Apprendre à créer et visualiser des dataframes, découverte des opérations sur les dataframe

# Création d'un dataframe
df <- data.frame()

df2 <- data.frame(Nom=character(),
                  Age=integer())

# Création d'un dataframe à partir d'un fichier
# Import
df <- read.csv("quartier-londres.csv", sep=";")

# Création d'un dataframe à partir d'un vecteur
df <- data.frame(c(1, 2, 3))

# Création d'un dataframe à partir d'une matrice
df <- data.frame(matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3))

# Visualisation d'un dataframe
df

# Opérations sur les dataframes
df + 1
df * 2
df / 2
df - 1
df ^ 2

# Opérations sur les colonnes
df$X1
df$X2
df$X3

# Opérations sur les lignes
df[1, ]
df[2, ]

# Opérations sur les cellules
df[1, 1]
df[1, 2]
df[2, 1]
df[2, 2]

