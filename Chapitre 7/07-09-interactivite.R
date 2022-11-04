# Transformation du graphique avec ggplotly()

library(plotly)

# https://plotly.com/ggplot2/getting-started/


set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]

p <- ggplot(data = d, aes(x = carat, y = price)) +
  geom_point(aes(text = paste("Clarity:", clarity)), size = 4) +
  geom_smooth(aes(colour = cut, fill = cut)) + facet_wrap(~ cut)

ggplotly(p)


##########


p2 <- ggplot(infos) +
  aes(x = name, y = motive) +
  geom_bar(stat = "identity", fill = "blue") +
  facet_grid(weapon ~ .) +
  plotly()


ggplotly(p2)
