# Apprendre à créer des listes et découverte des fonctions utiles applicables sur des listes

# Création de listes
# La fonction de base pour créer une liste est la fonction  list   :
  
personList <- list(c("Sherlock","Watson","Dr Watson","James Moriarty"),matrix(1:6,2,3))
personList

length(personList)

is.list(personList)

#  y accéder plus facilement via l’opérateur  $  . 
# Ceci est faisable via la fonction  names  :
  
names(personList) # pas de nom actuellement, la fonction retourne un NULL

names(personList) <- c("nom","matrice")
names(personList)

personList$

# Il est également possible de créer une liste en partant d’une liste vide.

li <- list()
li
# list()

li[[1]] <- 1:4
li

li$matrice <- matrix(1:4,nrow=2)
li

names(li)

# Fonctions utiles
# il n’est pas possible de faire des calculs entre plusieurs listes. 
# Néanmoins, il existe quelques fonctions valides et utiles :
  
# lapply  applique une fonction (comme la moyenne, la variance, etc.) 
# successivement à chacune des composantes.
lapply(li, sum)

# unlist(maliste)  crée un seul vecteur contenant tous les éléments de la liste. 
# Les éléments d’un vecteur étant nécessairement du même mode, il faut faire attention à la conversion automatique pratiquée par R.
unlist(li)

#concatène deux listes.
list2 <- c(personList,li)  
