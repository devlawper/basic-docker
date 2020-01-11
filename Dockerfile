# On indique l'image parent à laquelle on fait appel
FROM php:7.3-alpine

# On copie l'ensemble de notre dossier "." à la racine de docker "/"
COPY . /

# On lance un server PHP pour interpreter le fichier index.php
CMD php -S 0.0.0.0:80 index.php