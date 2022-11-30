# Découverte des exports de graphiques en mode manuel ou automatique

library(dslabs)
data(murders)

r <- murders %>% 
  summarize(rate = sum(total) /  sum(population) * 10^6) %>%
  pull(rate)

plot <- ggplot(murders, aes(population/10^6, total, label = abb)) +   
  geom_abline(intercept = log10(r), lty = 2, color = "darkgrey") +
  geom_point(aes(col=region), size = 3) +
  geom_text_repel() + 
  scale_x_log10() +
  scale_y_log10() +
  xlab("Populations en millions") + 
  ylab("Nombre de meurtres") +
  ggtitle("Meurtres par armes à feu aux États-Unis en 2010") + 
  scale_color_discrete(name = "Region") +
  theme_economist()

## Automatique : Bouton Export


## Manuel

### Exporter les graphiques en png :


ggsave("mon_graph.png", plot, width=10, height=10, units="in")


### Exporter les graphiques en pdf :

pdf("mon_graph.pdf")
plot
dev.off()


