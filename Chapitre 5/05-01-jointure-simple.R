# Comprendre et savoir comment réaliser une jointure simple en R avec seulement 1 point commune

personnages <- data.frame(name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
                   age = c(42, 35, 45, 60, 47, 30, 50, 25, 40, 50),
                   gender = c("Homme", "Homme", "Homme", "Femme", "Homme", "Femme", "Homme", "Femme", "Homme", "Homme"),
                   profession = c("Détective", "Médecin", "Police", "Propriétaire", "Fonctionnaire", "Chanteur d'opéra", "Mathématicien", "Veuve", "Banquier", "Maître chanteur"),
                   nationality = c("British", "British", "British", "British", "British", "American", "British", "British", "British", "British"))
                   
infos <- data.frame(
                   name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
                   residence = c("221B Baker Street", "221B Baker Street", "Scotland Yard", "221B Baker Street", "Diogenes Club", "Briony Lodge", "Unknown", "Unknown", "Unknown", "Unknown"),
                   weapon = c("Mind", "Force", "Force", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind"),
                   motive = c("Justice", "Justice", "Justice", "Love", "Justice", "Love", "Folie", "Justice", "Money", "Money"),
                   outcome = c("Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant"),
                   notes = c("Le seul détective consultant au monde", "Le meilleur ami et colocataire de Sherlock Holmes", "Le meilleur détective de Scotland Yard", "La logeuse de Sherlock Holmes", "Le frère aîné de Sherlock Holmes", "Le seul amour de Sherlock Holmes", "La némésis de Sherlock Holmes", "La femme de Sherlock Holmes", "Le client de Sherlock Holmes", "L'ennemi de Sherlock Holmes"))



### Exercice 1
library(dplyr)
dataset <- merge(personnages,infos)




### Exercice 2
richesse <- c('Riche','Pauvre','Aisé','Pauvre','Riche','Riche','Aisé','Riche','Très riche','Inconnu')
dataset_avecrichesse <- cbind(dataset, richesse)




### Exercice 3
newperso <- c('Vincent','Homme', '42','Formateur','Français','Unknown','Unknoww','Connaissance','Vivant','Fan de Sherlock Holmes','Classe moyenne')

dataset_avecnewperso <- rbind(dataset_avecrichesse, newperso)


