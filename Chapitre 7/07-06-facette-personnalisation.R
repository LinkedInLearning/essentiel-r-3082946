# Changement du thème d’un graphique en utilisant un thème prédéfini


library(ggthemes)
library(ggplot2)


ggplot(infos) +
  aes(x = name, y = outcome) +
  geom_bar(stat = "identity") +
  facet_wrap(~ weapon) +
  theme_map()


# https://jrnold.github.io/ggthemes/
# https://github.com/jrnold/ggthemes/

library(ggthemes)
library(ggrepel)
library(dplyr)

library(dslabs)
data(murders)

r <- murders %>% 
  summarize(rate = sum(total) /  sum(population) * 10^6) %>%
  pull(rate)

murders |> ggplot(aes(population/10^6, total, label = abb)) +   
  geom_abline(intercept = log10(r), lty = 2, color = "darkgrey") +
  geom_point(aes(col=region), size = 3) +
  #geom_text_repel() + 
  #scale_x_log10() +
  #scale_y_log10() +
  xlab("Populations en millions") + 
  ylab("Nombre de meurtres") +
  ggtitle("Meurtres par armes à feu aux États-Unis en 2010") + 
  scale_color_discrete(name = "Region") +
  theme_economist()

