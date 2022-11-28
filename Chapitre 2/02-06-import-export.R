# Compréhension et utilisation des fichiers mémoire Rdata. 
# Utilisation des fonctions d'import et export et découverte de l'aide

### Rdata

#Ouvrir un projet
#Une nouvelle session R (processus) est lancée.
#Le fichier .RData du répertoire principal du projet est chargé (si les options du projet indiquent qu'il doit être chargé).

#Quitter un projet
#Les fichiers .RData sont écrits dans le répertoire du projet. 
#La session R est terminée.

# Charger les données
load("sherlock.RData")

### Doc
url <- "https://www.gutenberg.org/files/48320/48320-0.txt"
page_txt <- readLines(url)
page_txt[0:500]

### Doc
library(rvest)
url <- "https://en.wikipedia.org/wiki/Sherlock_Holmes"
page_html <- read_html(url)

### 
url <- "https://sherlock-holm.es/stories/pdf/a4/1-sided/advs.pdf"
library(pdftools)
page_pdf <- pdftools::pdf_text(pdf = url)
page_pdf[30]

####
save(page_txt, page_html,page_pdf , file = "sherlock.RData")


