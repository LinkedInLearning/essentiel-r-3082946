# Se familiariser avec les packages et savoir les installer en lignes de commandes

#Pour installer un package, vous pouvez utiliser l’onglet  Package  de RStudio, ou la fonction  
# install.packages("nom_du_package")

#Afin d’utiliser un package installé, il faut ensuite le charger pour la session de travail avec la fonction  
# library(nom_du_package) 

#Certains packages sont en constante évolution, avec de nouvelles versions régulièrement disponibles. 
#Il est donc intéressant de les mettre à jour de temps en temps.
#Le mieux est de mettre à jour les packages à l’ouverture d’une session R, en utilisant la fonction  
# update.packages()

library(dplyr)
library(tm.plugin.webmining)
library(purrr)
library(tidytext)
library(ggplot2)
library(tidyr)
library(igraph)
library(ggraph)

# Accès à la documentation d'un package

# install.packages("devtools")
# devtools::install_github("ropensci/gutenbergr")

library(gutenbergr)
library(dplyr)
library(stringr)

# Notre test 
book <- gutenberg_download(13795)









