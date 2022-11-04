# Comprendre comment on peut exporter Rmarkdown vers des formats divers : docx, html et pdf


# formats de sortie disponibles pour un fichier Markdown.
  
# - rapports ou articles en pdf, html, doc, odt, etc. ;
# - présentations sous forme de slides pdf ou html ;
# - sites web


---
  title: "Sherlock Holmes"
author: "Arthur Conan Doyle"
date: "`r format(Sys.time(), '%d %B, %Y')`"
output: html_document
---
  
# Corps d’un document R Markdown
# Le corps d’un document R Markdown comprend deux types de blocs, qu’on peut alterner librement :
  
# Des blocs de texte brut mis en forme selon la syntaxe markdown
# Des blocs de code R (appelés chunks) encadrés par les balises `
# Ces chunks peuvent être nommés
  
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

#This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

#When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
```{r cars}
summary(cars)
```

## Including Plots

#You can also embed plots, for example:
  
```{r pressure, echo=FALSE}
plot(pressure)
```

## Exporter R-markdown

# On peut exporter vers d'autres formats comme le word avec le bouton **knit word**, 
# vers le html avec le bouton **knit HTML**
# vers un pdf avec la commande **knit PDF**.



  



