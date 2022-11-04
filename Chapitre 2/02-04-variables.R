# Apprendre à créer des variables en R , à les effacer et à faire des opérations

# https://cran.r-project.org/doc/contrib/Goulet_introduction_programmation_R.pdf

#Tout dans le langage R est un objet : les variables contenant des données,
#les fonctions, les opérateurs, même le symbole représentant le nom d’un
#objet est lui-même un objet. Les objets possèdent au minimum un mode et
#une longueur et certains peuvent être dotés d’un ou plusieurs attributs

# variable algébriqe scalaire
# affecter une valeur 
a <- 5

# pas clair si chiffre négatif
a <--5

# il existe le =
a = 6

# vairable algebrique complexe
x <- 3 + 2i

#Re(x)
#Im(x)
#x+x : somme de  2 nombres, diviion, multiplication

z <- complex(real=3, imaginary = 2)
# argument obligatoire

# mod(z) : module
# arg(z) : angle
# conj(z) : conjugué complexe

#Create a variable `sherlock` with the value `"Sherlock Holmes"`

#Create a variable `watson` with the value `"Dr. Watson"`

#Create a variable `sherlock_watson` with the value `"Sherlock Holmes and Dr. Watson"`


## Pour obtenir la longueur de la chaîne, il faut utiliser
## nchar().
nchar(x)






