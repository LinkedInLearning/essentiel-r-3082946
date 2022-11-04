# Apprendre à créer des listes et découverte des fonctions utiles applicables sur des listes


# Création de listes
# La fonction de base pour créer une liste est la fonction  list   :
  
personList <- list(c("Sherlock","Watson","C","A"),matrix(1:4,2,2))
personList


length(personList)

mode(personList)

is.list(personList)

#  y accéder plus facilement via l’opérateur  $  . Ceci est faisable via la fonction  names  :
  
names(personList) # pas de nom actuellement, la fonction retourne un NULL


names(personList) <- c("nom","age")
names(personList)


# Il est également possible de créer une liste en partant d’une liste vide.

li <- list()
li
# list()

li[[1]] <- 1:4
li

li$nouv <- matrix(1:4,nrow=2)
li

# Comme la première composante n’a pas de nom, on retrouve  [[1]]  dans l’affichage de la liste puis la composante  nouv  .

names(li)
# [1] "" "nouv"
# et les attributs de cette liste sont les noms.

# Fonctions utiles
# il n’est pas possible de faire des calculs entre plusieurs listes. 
# Néanmoins, il existe quelques fonctions valides et utiles :
  
# lapply  applique une fonction (comme la moyenne, la variance, etc.) successivement à chacune des composantes.

# unlist(maliste)  crée un seul vecteur contenant tous les éléments de la liste. 
# Les éléments d’un vecteur étant nécessairement du même mode, il faut faire attention à la conversion automatique pratiquée par R.

#concatène deux listes.
c(liste1,liste2)  