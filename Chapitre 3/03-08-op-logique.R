# Découverte des relations d’ordre ( > < <= >= ) et maitrise des opérations logiques ( & |) 

# ---------

# relation d'ordre

# 0 < 2
# 0 > 2
# 2 > 0
# 0 <= 2
# 2 >=1
# 0==1
# 0==0

# 1!=0
# ~1!= 1

# !TRUE
# !FALSE

# algebre booleaenne
# 0 | 1 -> TRUE
# 1 | 1 -> TRUE
# 1 & 1 -> TRUE
# 1 & 0 -> FALSE


# Utile dans les filtres


## L'énigme de Sherlock Holmes
## Sherlock Holmes enquête sur un meurtre. Il a trouvé une note avec le message suivant :
## "Le meurtrier est un homme mesurant entre 170 et 180 cm, il a entre 30 et 40 ans, il porte une barbe et un chapeau."
## Sherlock Holmes a trouvé trois suspects :
  

suspect1 <- c(175, 35, TRUE, TRUE)
suspect2 <- c(178, 32, FALSE, TRUE)
suspect3 <- c(173, 41, TRUE, FALSE)


# Les quatre éléments de chaque vecteur sont :
#   
# - taille en cm
# - l'âge
# - barbe (VRAI ou FAUX)
# - chapeau (VRAI ou FAUX)


## Qui est le coupable ?