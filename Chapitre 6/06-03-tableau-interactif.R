# Mise en forme des tableaux interactifs avec {DT}

#install.packages("DT")
library(DT)


# La base de {DT} est la fonction datatable() 
# La table est affichée par défaut avec une fonction de recherche, une pagination, un menu 
# et des informations sur le nombre de lignes affichées/lignes totales de la table.
  
iris %>% 
datatable()

# Il existe dans {DT} des styles css prédéfinis
  
#cell-border : pour une bordure pleine des cellules
#compact : réduit les espaces entre les lignes
#hover : mise en avant de la ligne lors du survol du curseur

# Supprimer ou renommer les lignes
  
iris %>%
datatable(rownames = paste("Ligne", 1:nrow(iris)))

# Renommer les colonnes

iris %>%
  datatable(colnames = paste("Colonne", 1:ncol(iris)))

# Possible de configurer chaque fonctionnalité
  
# pageLength : le nombre d’observations affichées
# lengthMenu : un vecteur contenant les différentes possibilités de nombre d’observations affichées, dans un menu déroulant au-dessus de la table
# columnDefs : une liste permettant par exemple de spécifier la classe des colonnes
# order : une liste contenant les numéros colonnes selon lesquelles on souhaite trier la table, et le sens de tri (asc pour ascendant, desc pour descendant)
# language : une liste permettant de traduire le texte à afficher au niveau des différentes options
# ordering : donne la possibilité ou non à l’utilisateur de trier les colonnes
  
iris %>%
  datatable(options = list(
    pageLength = 5, 
    lengthMenu = c(5, 10, 15, 20),
    columnDefs = list(list(className = 'dt-center', targets = 4)), 
    order = list(list(0, "desc"), list(1, "asc")),
    language = list(
      info = "Lignes _START_ à _END_ sur un total de _TOTAL_ entrées",
      paginate = list(previous = 'Précédent', `next` = 'Suivant'),
      lengthMenu = "Afficher _MENU_ obs."
    ),
    ordering = FALSE,
    searching = FALSE
  )
  )


# Editer sa table

  
iris %>%
  datatable(options = list(pageLength = 5), 
            editable = "row")

# Spécifier les colonnes qui ne doivent pas être éditables, 

  
  