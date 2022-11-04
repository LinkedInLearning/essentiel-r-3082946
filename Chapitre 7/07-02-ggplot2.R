# Série d'exemples pour comprendre le champ des possibles et mise en place d'un TP sur des données marketing

library(ggplot2)

infos <- data.frame(
  name = c("Sherlock Holmes", "Dr. Watson", "Inspector Lestrade", "Mrs. Hudson", "Mycroft Holmes", "Irene Adler", "Professor Moriarty", "Mary Morstan", "James Phillimore", "Charles Augustus Milverton"),
  residence = c("221B Baker Street", "221B Baker Street", "Scotland Yard", "221B Baker Street", "Diogenes Club", "Briony Lodge", "Unknown", "Unknown", "Unknown", "Unknown"),
  weapon = c("Mind", "Force", "Force", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind", "Mind"),
  motive = c("Justice", "Justice", "Justice", "Love", "Justice", "Love", "Folie", "Justice", "Money", "Money"),
  outcome = c("Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant", "Vivant"),
  notes = c("Le seul détective consultant au monde", "Le meilleur ami et colocataire de Sherlock Holmes", "Le meilleur détective de Scotland Yard", "La logeuse de Sherlock Holmes", "Le frère aîné de Sherlock Holmes", "Le seul amour de Sherlock Holmes", "La némésis de Sherlock Holmes", "La femme de Sherlock Holmes", "Le client de Sherlock Holmes", "L'ennemi de Sherlock Holmes"))


ggplot(infos, aes(x = name, y = motive))

ggplot(infos, aes(x = name, y = motive)) + geom_point()

ggplot(infos, aes(x = name, y = motive)) + geom_point() + theme_bw() + xlab("Personnes") + ylab("Motifs") + ggtitle("Les motifs des personnes")

