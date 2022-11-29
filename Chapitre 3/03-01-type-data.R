# Comprendre les types de donnés et déterminer si chaque colonne est une date, une valeur numérique, un texte…
# pas seulement des scalaires, on peut mettre des objets

# scalar
a <- 1

# vector
b <- c(1,2,3,4,5)

# matrix
c <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)

# data frame
d <- data.frame(x = c(1,2,3,4,7), y = c('Sherlock','Moriaty','Watson','Huddson','Hilary'))

# list
e <- list(a = 1, b = 2, c = 'Test')

# factor
f <- factor(c("M", "F", "F", "M", "M", "F"))
attributes(f)
levels(f)

# array
g <- array(c(1,2,3,4,5,6,7,8,9), dim = c(3,3))


######
# on peut specifier le format de chaque colonne
suspects <- read_csv(
  readr_example("chickens.csv"),
  col_types = cols(
    chicken   = col_character(),
    sex       = col_factor(levels = c("rooster", "hen")),
    eggs_laid = col_integer(),
    motto     = col_character()
  )
)



