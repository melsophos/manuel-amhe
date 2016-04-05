# README

Ce document contient diverses conventions sur la rédaction du manuel et des
ateliers.

## LaTeX

Le projet est composé de deux fichiers : un qui contient le manuel proprement
dit, et l'autre une liste d'ateliers. Ce second fichier fait référence aux
concepts définis dans le premier fichier via hyperref : pour cette raison il
est nécessaire de s'assurer que le fichier amhe_manuel.aux existe.

Conventions pour les labels

    sec[:subsec]type:nom

où le type crrespond au type de référence et peut être : fig, tab, def, coup,
garde, tech, ex.

## Contrôle de version

Mercurial est utilisé pour gérer les versions du code LaTeX.
Les messages doivent comporter un titre court (moins de 80 caractères) et une
description plus longue après une ligne vide.
Cette description inclue l'arme concernée et la source utilisée (manuscrit,
stage...).

