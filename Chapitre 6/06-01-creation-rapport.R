# Découverte des rapports utilisant du code R avec Rmarkdown.

##########

#Markdown est un système d’édition utilisé pour faire de la documentation de projet. 
#L’extension de ce type de fichier est .md. 

# Markdown présente deux avantages:
# il est facile d’inclure des blocs de code informatique et des équations mathématiques
# le formatage de blocs de code est simple et facile à utiliser

# R Markdown permet de lier du texte avec du code R. 
# un document R Markdown peut à la fois présenter et exécuter du code R, 


############

# Comment construire un document R Markdown ?

# Un document R Markdown comprend deux parties principales :

#- L’en-tête (YAML header) qui gère les éléments de style ;
#- Le contenu qui gère le fond et permet d’alterner librement texte et code.


---
title: 'Test R'
author: "Vincent"
date: "1/15/2022"
output: html_document
---
  
```
{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
  
```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:
  
```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot