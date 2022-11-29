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
## "Le meurtrier est un homme mesurant entre 170 et 180 cm, 
## il a entre 30 et 40 ans, il porte une barbe et un chapeau."
## Sherlock Holmes a trouvé trois suspects :
  
df <- data.frame(c("Albert","Jacques","Jean"),
                 c(175,178,173),
                 c(35,32,41),
                 c(TRUE,FALSE,TRUE),
                 c(TRUE,TRUE,TRUE))

colnames(df) <- c("Prénom","Taille","Age","Barbe", "Chapeau")

## Qui est le coupable ?

df[which(df$Barbe==TRUE & df$Chapeau==TRUE),]

df[which(df$Barbe==TRUE & df$Chapeau==TRUE & df$Age<40),]



