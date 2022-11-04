# Comprendre et savoir comment réaliser des jointures complexes en R avec de nombreuses conditions

personnages <- data.frame(name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
                          age = c(42, 35, 45, 60, 47, 30, 50, 25, 40, 50),
                          gender = c("Homme", "Homme", "Homme", "Femme", "Homme", "Femme", "Homme", "Femme", "Homme", "Homme"),
                          profession = c("Détective", "Médecin", "Police", "Propriétaire", "Fonctionnaire", "Chanteur d'opéra", "Mathématicien", "Veuve", "Banquier", "Maître chanteur"),
                          nationality = c("British", "British", "British", "British", "British", "American", "British", "British", "British", "British"))


infos <- data.frame(
  id = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
  residence = c("221B Baker Street", "221B Baker Street", "Scotland Yard", "221B Baker Street", "Diogenes Club", "Briony Lodge", "Unknown", "Unknown", "Unknown", "Unknown"),
  weapon = c("Mind", "Force", "Force", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind"),
  motive = c("Justice", "Justice", "Justice", "Love", "Justice", "Love", "Folie", "Justice", "Money", "Money"),
  outcome = c("Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant"),
  notes = c("Le seul détective consultant au monde", "Le meilleur ami et colocataire de Sherlock Holmes", "Le meilleur détective de Scotland Yard", "La logeuse de Sherlock Holmes", "Le frère aîné de Sherlock Holmes", "Le seul amour de Sherlock Holmes", "La némésis de Sherlock Holmes", "La femme de Sherlock Holmes", "Le client de Sherlock Holmes", "L'ennemi de Sherlock Holmes"))


# Jointure avec R base
dataset <- base::merge(personnages,
                            infos,
                            by.x = "name",
                            by.y = "id",
                            all.x = TRUE)

head(dataset)

# Jointure avec dplyr

library(dplyr)


dataset_dplyr <- personnages %>% 
  left_join(y = infos, 
            by = c("name" = "id"))


# Règle n°1 : vérifier la présence de valeurs manquantes dans les variables de jointure.
# Règle n°2 : vérifier la présence de doublons dans les variables de jointure.

band_members
band_instruments

band_members %>% inner_join(band_instruments)
band_members %>% left_join(band_instruments)
band_members %>% right_join(band_instruments)
band_members %>% full_join(band_instruments)







