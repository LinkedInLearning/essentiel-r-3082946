# Installation et utilisation de package qui aide à créer des graphiques


ggplot(infos) +
  aes(x = name, y = motive) +
  geom_bar(stat = "identity", fill = "blue") +
  facet_grid(weapon ~ .) +
  theme(text = element_text(size = 25),
        axis.text.x = element_text(angle = 45, hjust = 1))


# Doc about theme

# http://127.0.0.1:61423/help/library/ggplot2/Example/theme


# https://github.com/dreamRs/esquisse

install.packages("esquisse")

esquisse::esquisser()

# or with your data:
esquisse::esquisser(palmerpenguins::penguins)

# X : body_mass_g
# Y : species
# fill : sex


