# Explication sur les 3 couches principales de ggplot et tests pratiques sur chacune des couches.

personnages <- data.frame(name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
                          age = c(42, 35, 45, 60, 47, 30, 50, 25, 40, 50),
                          gender = c("Homme", "Homme", "Homme", "Femme", "Homme", "Femme", "Homme", "Femme", "Homme", "Homme"),
                          profession = c("Détective", "Médecin", "Police", "Propriétaire", "Fonctionnaire", "Chanteur d'opéra", "Mathématicien", "Veuve", "Banquier", "Maître chanteur"),
                          nationality = c("British", "British", "British", "British", "British", "American", "British", "British", "British", "British"))


# Exemple 1 :
ggplot(data = personnages, aes(x = factor(gender))) + 
  geom_bar()

# Exemple 2 :
ggplot(data = personnages, aes(x = factor(gender), fill = factor(gender))) +
  geom_bar()

# Exemple 3 :
ggplot(data = personnages, aes(x = factor(gender), fill = factor(nationality))) +
  geom_bar()

# Exemple 4 :
ggplot(data = personnages, aes(x = factor(nationality), fill = factor(gender))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


