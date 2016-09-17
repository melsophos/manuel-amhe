# Manuel AMHE (arts martiaux historiques européens)

L'objectif de ce projet est de mettre à disposition un ensemble de documents
pour l'étude des arts martiaux historiques européens (AMHE) :
- Principes : principes généraux de l'escrime (structure et armes).
- Recueil : recueil d'exercices et de techniques (inclut les Principes).
- Ateliers : suggestions d'ateliers (hyperliens avec le Recueil).

## Manuel, téléchargement et commentaires

La dernière version du texte peut être téléchargée sur le [site du *Chapitre des
armes*][5] ou bien à l'[adresse suivante][1].
Le manuel principal est diffusé sous la [Licence Art Libre 1.3][2], toutefois
les ateliers ne sont pas diffusés sous licence libre et les ateliers restent
la propriété de leurs auteurs respectifs.

Les commentaires (critiques, suggestions, demandes d'ajout...) peuvent être
adressés par email ou bien en remplissant un [rapport "d'erreur" sur Github][3].
Cette dernière solution est plus simple car elle permet de centraliser les
remarques.

Les changements entre chaque version majeure peuvent être trouvés dans le
fichier `CHANGES`.

## Contributions

Toute contribution au manuel est bienvenue. Les contributions courtes peuvent
être envoyées par email. Pour les corrections plus longues la méthode
préférée est d'utiliser la méthode de ["fork-branch-pull request"][4].
Cette section liste certaines conventions utilisées dans le manuel.

### Descriptions

La description des exercices et des techniques doivent suivre les conventions
décrites dans le manuel. Il vaut mieux donner trop de détails que pas assez.
Afin que les fiches d'ateliers puissent être utilisées sans le manuel principal
(par exemple en cours, où un accès rapide est nécessaire) chaque point de
l'atelier comporte une référence au manuel ainsi qu'une courte description.

### LaTeX

Le projet est composé de deux fichiers : un qui contient le manuel proprement
dit, et l'autre une liste d'ateliers. Ce second fichier fait référence aux
concepts définis dans le premier fichier via hyperref : pour cette raison il
est nécessaire de s'assurer que le fichier amhe_manuel.aux existe.
La commande `make build` construit les deux documents en s'assurant que toutes
les dépendances sont satisfaites.

Conventions pour les labels

    sec[:subsec]type:nom

où le type crrespond au type de référence et peut être : fig, tab, def, coup,
garde, tech, ex.

### Images

Les images sont créées grâce à Inkscape et sauvegardées au format svg. Dans
le répertoire principal lancer `make images` afin de convertir les images en
PDF.

### Contrôle de version

Git est utilisé pour gérer les versions du code LaTeX. Les messages doivent
comporter un titre court (moins de 80 caractères) et une description plus
longue après une ligne vide. Si possible cette description inclue l'arme
concernée et la source utilisée (manuscrit, stage...).

### Références

Les clés des références Bibtex sont typiquement de la forme suivante

    [Author:][Traducteur|Workshop:][:année]:Titre


[5]: https://chapitredesarmes.wordpress.com/travaux/
[1]: https://www.dropbox.com/sh/vb1e2ltungq1yj9/AABeYtvJWl7p-u51uncn8a9Ua
[2]: http://artlibre.org
[3]: https://github.com/melsophos/manuel-amhe/issues
[4]: https://help.github.com/articles/fork-a-repo/

