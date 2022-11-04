# Compréhension et utilisation des fichiers mémoire Rdata. 
# Utilisation des fonctions d'import et export et découverte de l'aide

### Rdata

#Ouvrir un projet
#Une nouvelle session R (processus) est lancée.
#Le fichier .RData du répertoire principal du projet est chargé (si les options du projet indiquent qu'il doit être chargé).

#Quitter un projet
#Les fichiers .RData sont écrits dans le répertoire du projet. 
#La session R est terminée.

# To load the data again
load("data.RData")

### Doc
### Import the file "sherlock_holmes.txt"
url <- "https://www.gutenberg.org/files/48320/48320-0.txt"
page_txt <- readLines(url)
page_txt[0:500]


### Doc
### Import the file "sherlock_holmes.html"
library(rvest)
url <- "https://en.wikipedia.org/wiki/Sherlock_Holmes"

# Extract the text from the file
page_html <- read_html(url)


### Import the file "sherlock_holmes.pdf"
url <- "https://sherlock-holm.es/stories/pdf/a4/1-sided/cano.pdf"

library(pdftools)
page_pdf <- pdftools::pdf_text(pdf = url)
page_pdf[30]


####
# Save multiple objects
save(page_txt, page_html,page_pdf , file = "sherlock.RData")


