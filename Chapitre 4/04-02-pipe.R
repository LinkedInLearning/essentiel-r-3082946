# Découverte de l'opérateur qui permet de simplifier l'écriture et la lecture des opérations complexes

library(dplyr)
library(anyflights)

# Sherlock Holmes fait une enquete sur un vol de LAX vers ATL en 2018 car le suspect lui a annoncé que son vol est parti en avance et qu'il l'a raté.
flights <- get_flights("LAX", 2018, 6)

# Methode 1
  
res <- arrange(select(filter(flights, dest == "ATL"), dep_delay, arr_delay), dep_delay)

# peu lisible
# les opérations apparaissent dans l’ordre inverse de leur réalisation.


# Methode 2
# stocker les résultats intermédiaires dans un objet temporaire
  
tmp <- filter(flights, dest == "ATL")
tmp <- select(tmp, tailnum, dep_delay, arr_delay)
res2 <- arrange(tmp, dep_delay)

# Methode 3
# Utiliser un nouvel opérateur, baptisé pipe. 
# Le pipe se note %>%

filter(flights, dest == "ATL")
# equivalent
flights %>% filter(dest == "ATL")

res3 <- filter(flights, dest == "ATL") %>%
        select(tailnum, dep_delay, arr_delay) %>%
        arrange(dep_delay)
