# Utilisation des packages {readr} et {readxl} 
# pour importer des fichiers plats en ligne de commande et avec une interface
# en ligne de commande et via une interface


# ---
### install readr
install.packages('readr')

library('readr')

#read_csv(): to read a comma (“,”) separated values
#read_csv2(): to read a semicolon (“;”) separated values
#read_tsv(): to read a tab separated (“\t”) values

### Import the file "sherlock_holmes.csv" 
data <- read_csv('sherlock-holmes-train.csv')

### Export your result


## installer le package
install.packages('readxl')

## charger la librarie
library(readxl)

## utiliser la doc

## Import the file "Breakout-Puzzle.xlsx" puzzle ( skip line, select onglet, ...)
xlsx <- read_excel("Breakout-Puzzle.xlsx", sheet = "Step 1", skip=9)


## Export


