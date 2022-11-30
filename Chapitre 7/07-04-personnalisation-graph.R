# Modification des axes, Contrôle des objets géométriques, Changement des libellés des titres

personnages <- data.frame(name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
                          age = c(42, 35, 45, 60, 47, 30, 50, 25, 40, 50),
                          gender = c("Homme", "Homme", "Homme", "Femme", "Homme", "Femme", "Homme", "Femme", "Homme", "Homme"),
                          profession = c("Détective", "Médecin", "Police", "Propriétaire", "Fonctionnaire", "Chanteur d'opéra", "Mathématicien", "Veuve", "Banquier", "Maître chanteur"),
                          nationality = c("British", "British", "British", "British", "British", "American", "British", "British", "British", "British"))



ggplot(data = personnages, aes(x = factor(nationality), fill = factor(gender))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip()


### Changement des libellés des titres
ggplot(data = personnages, aes(x = factor(nationality), fill = factor(gender))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip() +
  ggtitle("Qui sont les personnages ?") +
  xlab("Nationalité") +
  ylab("Nombre de personnes") +
  guides(fill=guide_legend(title="Couleur"))


### Contrôle des objets géométriques
ggplot(data = personnages, aes(x = factor(nationality), fill = factor(gender))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip() +
  ggtitle("Qui sont les personnages ?") +
  xlab("Nationalité") +
  ylab("Nombre de personnes") +
  guides(fill=guide_legend(title="Couleur")) +
  scale_fill_manual(values = c("#8dd3c7", "#d38d8d")) 



### Modification du type de ligne
ggplot(data = personnages, aes(x = factor(nationality), fill = factor(gender))) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  coord_flip() +
  ggtitle("Qui sont les personnages ?") +
  xlab("Nationalité") +
  ylab("Nombre de personnes") +
  guides(fill=guide_legend(title="Couleur")) +
  scale_fill_manual(values = c("#8dd3c7", "#d38d8d")) +
  theme(panel.border = element_rect(colour = "black", fill = NA, size = 1)) +
  theme(panel.grid.major = element_line(colour = "grey50"))



