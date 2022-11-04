# Comprendre les types de donnés et déterminer si chaque colonne est une date, une valeur numérique, un texte…
# pas seulement des scalaires, on peut mettre des objets
# citer tous les types de données

# scalar
a <- 1

# vector
b <- c(1,2,3,4,5)

# matrix
c <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)

# data frame
d <- data.frame(x = c(1,2,3,4,5), y = c(1,2,3,4,5))

# list
e <- list(a = 1, b = 2, c = 3)

# factor
f <- factor(c("a", "b", "c", "a", "b", "c"))

# array
g <- array(c(1,2,3,4,5,6,7,8,9), dim = c(3,3))


######
# on peut specifier le format de chaque colonne
supects <- read_csv(
  readr_example("chickens.csv"),
  col_types = cols(
    chicken   = col_character(),
    sex       = col_factor(levels = c("rooster", "hen")),
    eggs_laid = col_integer(),
    motto     = col_character()
  )
)

