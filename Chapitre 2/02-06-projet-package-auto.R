# Installation d'un package automatiquement,

# prise en main du changement de dossier de travail avec Rprofile 
# et l'organisation des fichiers d'historiques avec Rhistory


#Création de projets

#- Crée un fichier de projet (avec une extension .Rproj) dans le répertoire du projet. 
# Ce fichier contient diverses options de projet (discutées ci-dessous) et peut également être utilisé comme raccourci pour ouvrir le projet directement depuis le système de fichiers.
#- Crée un répertoire caché (nommé .Rproj.user) où sont stockés les fichiers temporaires spécifiques au projet 
# (par exemple, les documents sources enregistrés automatiquement, l'état des fenêtres, etc. 
#- Charge le projet dans RStudio et affiche son nom dans la barre d'outils Projets


#Ouvrir un projet

#Une nouvelle session R (processus) est lancée.
#Le fichier .Rprofile dans le répertoire principal du projet (s'il existe) est récupéré par R.
#Le fichier .Rhistory du répertoire principal du projet est chargé dans le volet Historique de RStudio (et utilisé pour l'historique des commandes flèches haut/bas de la console).
#Le répertoire de travail actuel est défini comme le répertoire du projet.
#Les documents sources précédemment édités sont restaurés dans les onglets de l'éditeur.
#Les autres paramètres de RStudio (par exemple, les onglets actifs, les positions des séparateurs, etc.) sont restaurés là où ils étaient la dernière fois que le projet a été fermé.


#Quitter un projet

#Les fichiers .Rhistory sont écrits dans le répertoire du projet. 
#(si les options actuelles indiquent qu'ils doivent l'être)
#La liste des documents  est sauvegardée 
#(afin qu'elle puisse être restaurée la prochaine fois que le projet est ouvert).
#Les autres paramètres de RStudio (comme décrit ci-dessus) sont sauvegardés.
#La session R est terminée.


